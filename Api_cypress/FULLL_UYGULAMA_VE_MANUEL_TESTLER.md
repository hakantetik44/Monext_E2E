# 🕵️‍♂️ FULLL UYGULAMASI: GÖRSEL TARİF VE DETAYLI MANUEL TEST REHBERİ

> **Senaryo:** fulll'da işe başladın, önüne bilgisayarı koydular. Ekranda ne göreceksin ve mouse ile nerelere tıklayıp neleri bozmaya çalışacaksın? İşte rehberin.

---

## 🖥️ 1. EKRAN: ÇALIŞAN LİSTESİ (LES FICHES SALARIÉS)

**👀 Nasıl Görünüyor?**
*   Pinterest gibi kartlar yan yana dizili.
*   Her kartta: Çalışan fotosu, İsim, Görev, "CDI/CDD" etiketi.
*   Üstte: "Filtrele" butonu (Departmana göre, Şirkete göre).
*   Sağ üstte: "+ YENİ ÇALIŞAN EKLE" (Ajouter) butonu.

**🧪 TEST SENARYOLARI (Neyi denemelisin?):**

| Test No | Ne Yap? | Beklenen Sonuç (Doğrusu) | Hata (Bug) Nedir? |
| :--- | :--- | :--- | :--- |
| **UI-01** | Arama kutusuna "Yılmaz" yaz. | Listede sadece soyadı Yılmaz olanlar kalmalı. | Alakasız kişiler gitmiyor veya "Sonuç yok" diyor ama Yılmaz var. |
| **UI-02** | "Sadece Ayrılanlar" (Sorties) filtresini seç. | İşten çıkmış, kartı grileşmiş personel gelmeli. | Aktif çalışanlar da listeleniyor. |
| **UI-03** | Hızlıca aşağı scroll yap (Lazy load). | Yeni kartlar akıcı şekilde yüklenmeli. | Ekran donuyor veya beyaz sayfa kalıyor. |
| **UI-04** | Bir kartın üzerine gel (Hover). | "Düzenle", "Sil", "Bordro Görüntüle" kısayolları çıkmalı. | Hiçbir şey olmuyor, içine girmek gerekiyor. |

---

## 📝 2. EKRAN: YENİ ÇALIŞAN SİHİRBAZI (WIZARD)

**👀 Nasıl Görünüyor?**
*   Adım adım ilerleyen bir form (Step 1, Step 2, Step 3...).
*   Sol tarafta ilerleme çubuğu: Kimlik > Adres > Banka > Sözleşme.
*   En altta "İleri" ve "Kaydet" butonları.

**🧪 TEST SENARYOLARI:**

| Test No | Ne Yap? | Beklenen Sonuç (Doğrusu) | Hata (Bug) Nedir? |
| :--- | :--- | :--- | :--- |
| **FORM-01** | Adım 1'de Soyadı boş bırak, "İleri" de. | Kırmızı uyarı: "Champ obligatoire" (Zorunlu alan). | 2. adıma geçmene izin veriyor. |
| **FORM-02** | Doğum tarihine "01/01/2040" yaz. | Uyarı: "Gelecek tarihli doğum olamaz". | Kabul ediyor (Henüz doğmamış çalışan!). |
| **FORM-03** | NIR (SGK No) alanına 10 rakam yaz. | Uyarı: "Eksik numara, 13+2 hane olmalı". | Kabul ediyor. |
| **FORM-04** | "Kaydetmeden Çık" de. | Pop-up: "Kaydedilmemiş verileriniz var, emin misiniz?". | Direkt kapanıyor ve her şey siliniyor. |

---

## 📊 3. EKRAN: PRİM GİRİŞ TABLOSU (SAISIE DES VARIABLES)

**👀 Nasıl Görünüyor?**
*   Excel tablosu gibi.
*   Satırlar: Ahmet, Mehmet, Ayşe...
*   Sütunlar: Prim, Yol, Yemek, Mesai Saati...
*   Hücrelerin içine tıklayıp yazı yazabiliyorsun.

**🧪 TEST SENARYOLARI:**

| Test No | Ne Yap? | Beklenen Sonuç (Doğrusu) | Hata (Bug) Nedir? |
| :--- | :--- | :--- | :--- |
| **GRID-01** | Prim sütununa harf "ABC" yaz. | Yazmana izin vermemeli veya kırmızı yakmalı. | Harf yazılıyor ve hesaplamayı bozuyor (NaN hatası). |
| **GRID-02** | Mesai saatine "-5" yaz. | Uyarı: "Negatif saat girilemez". | Kabul ediyor (Zamanı geri alan çalışan!). |
| **GRID-03** | Sayı gir ve "Tab" tuşuna bas. | İmleç yanındaki hücreye geçmeli. | İmleç kayboluyor, mouse ile tıklamak gerekiyor. |
| **GRID-04** | 50 kişiye veri gir, aniden sayfayı yenile. | (Eğer auto-save varsa) Veriler durmalı. | Her şey silindi! (Kritik bug). |

---

## 📄 4. EKRAN: BORDRO GÖRÜNTÜLEME (BULLETIN DE PAIE)

**👀 Nasıl Görünüyor?**
*   Ekran ikiye bölünmüş.
*   **Sağda:** Maaş pusulasının PDF hali (A4 kağıt gibi).
*   **Solda:** Hesaplama ağacı (Klasör yapısı gibi: Brüt > Kesintiler > Net).

**🧪 TEST SENARYOLARI:**

| Test No | Ne Yap? | Beklenen Sonuç (Doğrusu) | Hata (Bug) Nedir? |
| :--- | :--- | :--- | :--- |
| **CALC-01** | Hesap makinesiyle: Brüt - Kesintiler = Net? | Kuruşuna kadar tutmalı. | 1 cent bile fark varsa BUG'dır. |
| **CALC-02** | Emeklilik satırındaki rakama tıkla. | Açılır pencere: "Matrah 3000 x %6.90 = 207" formülü. | Tıklanmıyor, rakamın nereden geldiği belli değil. |
| **CALC-03** | "PDF İndir" butonuna bas. | .pdf dosyası inmeli ve açılmalı. | .html iniyor veya bozuk dosya iniyor. |
| **CALC-04** | SMIC (Asgari Ücret) kontrolü yap. | Temel maaş < 1801,80€ ise uyarı vermeli. | Asgari ücretin altında maaş hesaplıyor (Yasal suç!). |

---

## 🚦 5. EKRAN: DSN DASHBOARD (BEYAN PANELİ)

**👀 Nasıl Görünüyor?**
*   Trafik ışıkları gibi.
*   🟢 Yeşil: Gönderildi, Sorun Yok.
*   🟠 Turuncu: Gönderildi ama Uyarı Var.
*   🔴 Kırmızı: Hata Var, Gönderilemedi.

**🧪 TEST SENARYOLARI:**

| Test No | Ne Yap? | Beklenen Sonuç (Doğrusu) | Hata (Bug) Nedir? |
| :--- | :--- | :--- | :--- |
| **DSN-01** | Hatalı verisi olan çalışanın DSN durumu. | Kırmızı ışık ve "Hata: Adres eksik" mesajı. | Yeşil yanıyor (Hatalı veri devlete giderse ceza yeriz!). |
| **DSN-02** | DSN dosyasını (XML) indirip aç. | İçinde çalışanın maaşı bordroyla aynı mı? | Bordroda 2500€, DSN'de 2000€ yazıyor (Kritik bug). |
| **DSN-03** | "Gönder" butonuna bas. | "Gönderiliyor..." spinner'ı dönmeli, sonra "Başarılı". | Buton tepki vermiyor veya "Server Error 500". |

---

### 🧠 SENİN MOTTON: "GÜVENME, DOĞRULA!"

Uygulama sana "Her şey yolunda, kaydettim" dese bile;
1.  Sayfayı yenile, gerçekten kaydetmiş mi bak.
2.  Bordroda "Net 2000" yazıyorsa, eline hesap makinesini al, kendin topla.
3.  "DPAE gönderildi" diyorsa, git rapordan kontrol et.

QA olmak, **şüpheci olmak** demektir. 🕵️‍♂️
