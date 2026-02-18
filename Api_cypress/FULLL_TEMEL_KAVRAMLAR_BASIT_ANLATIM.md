# 🇫🇷 Fransa Bordro Sistemi: En Basit Haliyle Terimler

Bu rehber, hiç Fransızca veya bordro bilmeyen birine durumu anlatmak için hazırlanmıştır.

---

## 1. DPAE Nedir? (İşe Giriş Bileti)
**Açılımı:** Déclaration Préalable à l'Embauche  
**Okunuşu:** "De-Pe-A-Ö"  
**Türkçesi:** İşe Alma Ön Beyanı

### 💡 Basitçe Ne Demek?
Birini işe almadan **ÖNCE** devlete haber vermektir. "Ben bu kişiyi işe alıyorum, sigortasını başlatın" demektir.

*   **Ne Zaman Yapılır?** Kişi iş başı yapmadan EN ERKEN 8 gün önce, EN GEÇ iş başı yaptığı an.
*   **Nereye Yapılır?** URSSAF (Fransa'nın SGK'sı) kurumuna.
*   **Yapılmazsa Ne Olur?** "Kaçak işçi çalıştırıyorsun" derler, çok büyük cezası vardır.

**Senin Görevin (QA Olarak):**
Uygulamada "Yeni Çalışan Ekle" (Ajouter un salarié) butonuna bastığında, arkada sistemin bu DPAE belgesini oluşturup oluşturmadığını veya URSSAF'a gönderim yapıp yapmadığını test etmektir.

---

## 2. BULLETIN DE PAIE Nedir? (Maaş Pusulası)
**Okunuşu:** "Bül-ten dö pey"  
**Türkçesi:** Bordro / Maaş Pusulası

### 💡 Basitçe Ne Demek?
Çalışanın o ay ne kadar kazandığını, ne kadar kesinti yapıldığını ve eline net ne kadar geçeceğini gösteren kağıttır.

*   **Brut (Brüt):** Hiçbir şey kesilmemiş ham para.
*   **Net à Payer (Ödenecek Net):** Çalışanın banka hesabına yatan para.
*   **Cotisations (Kesintiler):** Emeklilik, sağlık, işsizlik sigortası için kesilen paralar.

**Senin Görevin (QA Olarak):**
Sistem "Brüt 3000 Euro" maaşı alıp, doğru matematiksel işlemlerle "Net 2300 Euro"ya düşürüyor mu? Hesap makinesi gibi çalışıyor mu? Bunu doğrulamak.

---

## 3. DSN Nedir? (Devlete Aylık Rapor)
**Açılımı:** Déclaration Sociale Nominative  
**Okunuşu:** "De-Es-En"  
**Türkçesi:** İsimlendirilmiş Sosyal Beyan

### 💡 Basitçe Ne Demek?
Eskiden şirketler devlete 10 farklı form gönderirdi (biri hastane için, biri emeklilik için, biri vergi için...). **DSN** ile bu bitti. Artık **TEK BİR DOSYA** gönderiliyor.

Bu dosya **DİJİTAL BİR PAKET** gibidir. İçinde şunlar yazar:
> "Merhaba Devlet, bu ay bizim şirkette:
> *   Ahmet 3000€ aldı, 500€ sigorta kesildi.
> *   Ayşe 10 gün raporluydu, hiç çalışmadı.
> *   Mehmet işten ayrıldı."

*   **Ne Zaman Gönderilir?** Her ayın 5'i veya 15'inde (maaşlar ödendikten sonra).
*   **Kime Gider?** Tek bir merkeze gider, oradan tüm kurumlara (Hastane, Emeklilik, Vergi Dairesi) dağılır.

**İki Türlü DSN Vardır:**
1.  **Aylık DSN (Mensuelle):** Rutin, her ay gönderilen.
2.  **Olay DSN'i (Événementielle):** Biri işten çıkarsa veya rapor alırsa, ayı beklemeden hemen gönderilen "Acil Durum" paketi.

**Senin Görevin (QA Olarak):**
Uygulamadaki "DSN Oluştur" butonuna bastığında çıkan dosyanın içinde "Ahmet'in maaşı doğru yazıyor mu?", "Ayşe'nin raporu işlenmiş mi?" diye kontrol etmek.

---

## 4. URSSAF Nedir? (Tahsilatçı)
**Okunuşu:** "Ür-saf"
**Türkçesi:** Sosyal Güvenlik ve Aile Yardımları Tahsilat Birliği

### 💡 Basitçe Ne Demek?
Fransa'nın **Para Toplama Kurumu**. Şirketlerden sigorta primlerini toplar ve gerekli yerlere (hastane, emeklilik sandığı) dağıtır.
Türkiye'deki **SGK'nın prim toplayan departmanı** gibi düşünebilirsin.

**Senin Görevin:**
Bordroda "URSSAF Kesintisi" satırının doğru hesaplandığını kontrol etmek.

---

## 5. SMIC Nedir? (Asgari Ücret)
**Okunuşu:** "Smik"
**Türkçesi:** Büyüme Endeksli Asgari Ücret

### 💡 Basitçe Ne Demek?
Fransa'da bir çalışana verebileceğin **EN DÜŞÜK** saatlik veya aylık ücret.
*   **2025 Yılı İçin:** Aylık yaklaşık **1.801,80 € (Brüt)**.

**Senin Görevin:**
Sisteme aylık 1.500 € maaşla tam zamanlı birini kaydetmeye çalışırsan, sistemin "Hoppala! Bu SMIC'in altında, yasak!" diye hata verip vermediğini test etmek.

---

## 6. SÖZLÜK: Hangi Kelime Neyi Karşılar?

| Fransızca | Türkçe Karşılığı | Benzetme |
| :--- | :--- | :--- |
| **Employeur** | İşveren | Patron |
| **Salarié** | Çalışan / Ücretli | İşçi |
| **Cotisations** | Primler / Kesintiler | Devlete giden pay |
| **Taux** | Oran / Yüzde | Pastadan alınan dilim büyüklüğü |
| **Montant** | Tutar | Paranın kendisi |
| **Prélèvement à la source (PAS)** | Kaynaktan Vergi | Maaş hesaba yatmadan devletin vergiyi alması |
| **Convention Collective** | Toplu Sözleşme | Sektörün Anayasası (Kanundan bile güçlü olabilir!) |

---

## 🚀 QA MÜLAKATINDA SANA SORARLARSA CEVAPLAR:

**Soru:** "DSN hakkında ne biliyorsun?"
**Cevap:** "DSN, bordro bilgilerini her ay tek bir dijital dosya ile devlete bildirdiğimiz sistemdir. Eskiden çok belge vardı, şimdi her şey DSN ile otomatik gidiyor. QA olarak benim işim, oluşturulan DSN dosyasının içindeki verilerin (maaş, izin, çıkış) bordro ile birebir tuttuğunu doğrulamaktır."

**Soru:** "DPAE neden önemlidir?"
**Cevap:** "Çünkü bir çalışanı yasal olarak başlatmanın ilk adımıdır. İşe başlamadan önce URSSAF'a bildirilir. Testlerde, yeni çalışan oluşturma sürecinin sonunda DPAE'nin tetiklenip tetiklenmediğini kontrol ederim."
