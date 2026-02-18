# 🧪 fulll – Manuel Test Rehberi: Hangi Uygulamaları Test Edeceksin?

---

## 📌 BÖLÜM 1: TEST EDECEĞİN UYGULAMALAR

İş ilanında açıkça yazıyor: **"Gamme Paie"** (Bordro Ürün Ailesi) üzerinde çalışacaksın. 
Ama bu tek bir uygulama değil, **birbirine bağlı bir ekosistem!**

### 🗺️ fulll Ürün Haritası – Senin Test Alanın

```
┌──────────────────────────────────────────────────────────────────┐
│                    fulll PLATFORM (SaaS – Web)                   │
│                                                                  │
│  ┌─────────────────────────────────────────────────────────────┐ │
│  │  ⭐ GAMME PAIE (SENİN ANA ALAN - Bordro Ürün Ailesi)       │ │
│  │                                                             │ │
│  │  1️⃣  fulll PAIE (Ana Bordro Modülü)                        │ │
│  │     ├── Bordro (Bulletin de paie) oluşturma                 │ │
│  │     ├── DSN yönetimi (Sosyal beyan)                         │ │
│  │     ├── Çalışan kartları (Fiche salarié)                    │ │
│  │     ├── Sözleşme yönetimi (Contrat de travail)              │ │
│  │     ├── Mevzuat parametreleri (Convention collective)       │ │
│  │     ├── İzin ve devamsızlık yönetimi (Absences)             │ │
│  │     ├── Tamamlayıcı bordro (Bulletin complémentaire)        │ │
│  │     └── Düzeltme/Geri dönüş (Régularisation DSN)           │ │
│  │                                                             │ │
│  │  2️⃣  PORTAIL RH (İK Portalı)                               │ │
│  │     ├── Değişken eleman girişi (EVP – Variables de paie)    │ │
│  │     ├── İzin talepleri (Demandes d'absence)                 │ │
│  │     ├── Çalışan self-servis portalı                         │ │
│  │     ├── Takvim görünümü (Plannings)                         │ │
│  │     └── Belge paylaşımı (Documents)                         │ │
│  │                                                             │ │
│  │  3️⃣  DASHBOARD (Gösterge Paneli)                            │ │
│  │     ├── Paie ilerleme durumu                                │ │
│  │     ├── Raporlama göstergeleri                              │ │
│  │     ├── "Météo" göstergeleri (dosya durumları)              │ │
│  │     └── 360° dosya görünümü                                 │ │
│  │                                                             │ │
│  └─────────────────────────────────────────────────────────────┘ │
│                                                                  │
│  ┌─────────────────────────────────────────────────────────────┐ │
│  │  🔗 İLİŞKİLİ MODÜLLER (Dolaylı Test Alanın)                │ │
│  │                                                             │ │
│  │  4️⃣  Documents (GED – Elektronik Arşiv)                    │ │
│  │     └── Bordro belgeleri, çalışan dosyaları                 │ │
│  │                                                             │ │
│  │  5️⃣  Messages (Mesajlaşma)                                 │ │
│  │     └── İK ekibi ile muhasebeci arası iletişim              │ │
│  │                                                             │ │
│  │  6️⃣  Tâches (Görevler)                                     │ │
│  │     └── Bordro sürecindeki iş adımları yönetimi             │ │
│  │                                                             │ │
│  │  7️⃣  API & Connectivité                                    │ │
│  │     └── Harici İK / ERP sistemleriyle entegrasyon           │ │
│  │                                                             │ │
│  └─────────────────────────────────────────────────────────────┘ │
│                                                                  │
│  📱 MOBİL UYGULAMALAR                                            │
│     ├── Fulll – Le Portail (Ana mobil portal)                    │
│     ├── Portail RH by Fulll (İK mobil uygulama)                 │
│     ├── Dashboard by Fulll (Raporlama mobil)                    │
│     └── Banque by Fulll (Banka mobil)                            │
└──────────────────────────────────────────────────────────────────┘
```

---

## 📌 BÖLÜM 2: MANUEL TEST – NE KONUDA, NASIL OLACAK?

### 🎯 "Paramétrage métier" nedir?

İş ilanında şunu yazıyor:
> *"Tester et valider les **paramétrages métiers** indispensables au bon fonctionnement des produits de la Gamme Paie"*

**Paramétrage métier = İş kurallarının doğru şekilde yapılandırılıp çalıştığını test etmek**

Bu ne demek? Somut örnekler:

```
ÖRNEK 1: Convention Collective (Toplu İş Sözleşmesi) Parametreleri
─────────────────────────────────────────────────────────────────
Soru: "Metalürji sektörü sözleşmesine (IDCC 3248) göre, bir çalışanın 
fazla mesai oranı doğru hesaplanıyor mu?"

Test adımları:
1. Kuruluş (Établissement) ekranını aç
2. Sosyal sekmesinde Convention Collective olarak IDCC 3248'i seç
3. Bir çalışan oluştur, bu sözleşmeye bağla
4. 10 saat fazla mesai gir
5. Bordro oluştur
6. ✅ Fazla mesai ödemesinin %25 oranında hesaplandığını doğrula
7. ✅ İlgili kalemlerin bordroya yansıdığını doğrula

ÖRNEK 2: DSN Beyanı
─────────────────────────────────────────────────────────────────
Soru: "Bir çalışan işten çıktığında, DSN événementielle (olay bazlı beyan) 
doğru üretiliyor mu?"

Test adımları:
1. Çalışan kartından sözleşme sonlandır
2. Son bordroyu oluştur
3. DSN événementielle üret
4. ✅ DSN dosyasındaki bilgilerin doğruluğunu kontrol et
5. ✅ Net-entreprises formatına uygunluğunu doğrula

ÖRNEK 3: Bordro Hesaplama
─────────────────────────────────────────────────────────────────
Soru: "3.500€ brüt maaşlı, Île-de-France'da yaşayan, cadre (yönetici) 
statüsündeki bir çalışanın net maaşı doğru mu?"

Test adımları:
1. Çalışan kartını oluştur (profil: cadre, Paris)
2. Brüt maaş: 3.500€
3. Bordro üret
4. ✅ Sosyal kesintilerin doğru olduğunu kontrol et
   - URSSAF, retraite, prévoyance, CSG, CRDS vb.
5. ✅ Net maaşın beklenen değere eşit olduğunu doğrula
6. ✅ Bordro PDF'inin yasal formata uyduğunu kontrol et
```

---

## 📌 BÖLÜM 3: DETAYLI MANUEL TEST ALANLARI

### 📂 1. Çalışan Yönetimi (Gestion des Salariés)

| Test Senaryosu | Kontrol Noktaları |
|----------------|-------------------|
| Yeni çalışan oluşturma | Ad, soyad, adres, NIR (sosyal güvenlik no), banka bilgileri |
| Çalışan bilgisi güncelleme | Adres değişikliği DSN'e yansıyor mu? |
| Sözleşme oluşturma | CDI/CDD/Apprentissage doğru tipler |
| Sözleşme sonlandırma | İşten çıkış nedeni, son ödeme hesabı |
| Çoklu sözleşme | Aynı çalışan birden fazla sözleşmeyle çalışabilir mi? |

### 💰 2. Bordro Üretimi (Production de Bulletins)

| Test Senaryosu | Kontrol Noktaları |
|----------------|-------------------|
| Normal bordro üretimi | Brüt → Net hesaplama doğru mu? |
| Değişken elemanlar | Primler, ikramiyeler, mesai doğru yansıyor mu? |
| İzin kesintileri | Hastalık, doğum izni, yıllık izin hesaplamaları |
| Tamamlayıcı bordro | Ek bordro oluşturma (mahkeme kararı, düzeltme) |
| Toplu bordro üretimi | 50+ çalışan için aynı anda bordro üretimi |
| Bordro kilitleme/açma | Kilitlenen bordro değiştirilebilir mi? |
| Geçmiş dönem düzeltme | Geçmiş aya ait bordroyu düzeltme + DSN régularisation |

### 📊 3. DSN Yönetimi (Déclaration Sociale Nominative)

| Test Senaryosu | Kontrol Noktaları |
|----------------|-------------------|
| DSN mensuelle (aylık) | Her ay sonu otomatik oluşuyor mu? |
| DSN événementielle | İşten çıkış, işe başlama, hastalık olayları |
| DSN Annule et Remplace | Hatalı DSN düzeltme süreci |
| DSN validasyonu | Gönderim öncesi kontrol noktaları (350+ kontrol!) |
| DSN iletimi | Net-entreprises'e başarılı iletim |
| DSN hata yönetimi | Hatalı DSN geri dönüşlerinin yönetimi |

### ⚖️ 4. Convention Collective (Toplu İş Sözleşmesi)

| Test Senaryosu | Kontrol Noktaları |
|----------------|-------------------|
| Sözleşme atama | IDCC kodu ile doğru sözleşme seçimi |
| Sözleşme değişikliği | Sözleşme değişince bordro hesaplaması güncelleniyor mu? |
| Çoklu sözleşme | Bir kuruluşta birden fazla convention |
| Kişiselleştirme | Modifikasyon yapılabiliyor mu? |

### 📅 5. İzin ve Devamsızlık (Absences)

| Test Senaryosu | Kontrol Noktaları |
|----------------|-------------------|
| Yıllık izin girişi | Takvim üzerinden giriş |
| Hastalık izni | Günlük ücret hesaplaması (IJSS) |
| Doğum/Babalık izni | Yasal günlerin doğruluğu |
| Yarım gün izin | Doğru hesaplama |
| İzin bakiyesi | Kalan gün sayısı doğru mu? |

### 👥 6. Portail RH (İK Portalı)

| Test Senaryosu | Kontrol Noktaları |
|----------------|-------------------|
| EVP (Değişken eleman) girişi | Müşteri tarafından giriş yapılabiliyor mu? |
| İzin talebi | Çalışan izin talep edebiliyor mu? |
| Onay akışı | Yönetici onayı çalışıyor mu? |
| Belge görüntüleme | Çalışan kendi bordrosunu görebiliyor mu? |
| Veri aktarımı | Portail RH → Paie modülüne veri geçişi |

---

## 📌 BÖLÜM 4: BU UYGULAMALARA ULAŞILABİLİR Mİ?

### 🔴 Kısa Cevap: HAYIR, Dışarıdan Doğrudan Erişim YOK

| Durum | Detay |
|-------|-------|
| **Ücretsiz deneme** | ❌ Yok – fulll ücretsiz deneme sunmuyor |
| **Demo erişimi** | ⚠️ Sadece talep üzerine – fulll.fr/demo üzerinden randevu alarak |
| **Herkese açık** | ❌ B2B SaaS – sadece müşteri muhasebeciler kullanabiliyor |
| **Mobil uygulama** | 📱 Google Play'de mevcut ama giriş bilgisi gerekli |
| **Help Center** | ✅ fulll.help – bazı bilgiler ve rehberler mevcut (ama giriş gerekebilir) |

### 🟡 Peki Ne Yapabilirsin? (Pratik Yapma İmkânları)

#### ✅ 1. Benzer Ücretsiz Bordro Yazılımlarında Pratik Yap

| Yazılım | Link | Neden? |
|---------|------|--------|
| **OpenPaye** | [openpaye.co](https://openpaye.co) | Fransız bordro simulator, ücretsiz, arayüz benzer |
| **PayFit (Demo)** | [payfit.com](https://payfit.com) | Popüler Fransız bordro SaaS, demo isteyebilirsin |
| **Silae** | [silae.fr](https://silae.fr) | Rakip yazılım, bordro mantığını anlamak için |
| **Sage Paie** | sage.com | Yaygın kullanılan bordro, ücretsiz demo var |

#### ✅ 2. DSN Validasyon Aracı (ÜCRETSİZ!)

```
🌐 https://www.net-entreprises.fr → dsn-val
   
   Bu araç ile DSN dosyalarının format doğruluğunu test edebilirsin!
   - XML dosyası yükle
   - Hata kontrolü yap
   - Format uygunluğunu doğrula
   
   ⭐ Bu araç, mülakatta "DSN sürecini biliyorum" demen için altın değerinde!
```

#### ✅ 3. fulll YouTube Kanalı (KRİTİK!)

```
🎥 YouTube'da "fulll paie" ara!
   
   Ne bulacaksın:
   - Ürün tanıtım videoları (arayüzü görürsün!)
   - Bordro oluşturma sürecini adım adım
   - Portail RH kullanımı
   - DSN yönetimi
   - Convention Collective parametreleri
   
   Bu videoları izleyerek:
   ✅ Arayüzü tanırsın
   ✅ İş akışını anlarsın
   ✅ Mülakatta "ürününüzü inceledim" diyebilirsin!
```

#### ✅ 4. fulll.fr Web Sitesini Detaylı İncele

```
📄 Sayfalar ve ne öğrenirsin:

├── fulll.fr/outils/paie        → Ürün özellikleri
├── fulll.fr/outils/portailrh   → İK Portalı detayları
├── fulll.fr/outils/dashboard   → Gösterge paneli 
├── fulll.fr/mission-sociale    → Sosyal misyon iş akışı
├── fulll.fr/veille-sociale     → Mevzuat takip sistemi
├── fulll.fr/connectivite       → API ve entegrasyonlar
├── fulll.fr/securite           → Güvenlik bilgileri (ISO 27001)
└── fulll.fr/data-ia            → Yapay zeka ve veri kullanımı
```

#### ✅ 5. Fransız Bordro Mevzuatını Öğren

```
📚 Temel Kavramlar (bunları BİLMEN LAZIM):

1. SMIC (Asgari ücret):
   - 2025'te brüt: ~1.801€/ay
   - Bordro hesaplamalarının temeli

2. Cotisations sociales (Sosyal kesintiler):
   - URSSAF (işsizlik, hastalık sigortası)
   - Retraite (emeklilik)
   - Prévoyance (risk sigortası)
   - CSG/CRDS (genel sosyal katkı)
   - Mutuelle (sağlık sigortası)

3. Convention Collective:
   - Sektöre özel iş sözleşmeleri
   - IDCC kodu ile tanımlanır
   - Fazla mesai oranları, izin hakları vb. belirler

4. DSN:
   - Aylık (mensuelle): Her ayın 5 veya 15'inde
   - Olay bazlı (événementielle): İşe başlama, çıkış, hastalık
   - XML formatında
   - Net-entreprises.fr üzerinden gönderilir

5. Bulletin de paie (Bordro) zorunlu bölümleri:
   - İşveren bilgileri
   - Çalışan bilgileri
   - Dönem bilgisi
   - Brüt maaş
   - Kesintiler kalemi kalemi
   - Net maaş
   - Net imposable (vergiye tabi net)
   - Prélèvement à la source (kaynaktan vergi)
```

---

## 📌 BÖLÜM 5: MANUEL TEST SÜRECİ – NASIL OLMASI GEREKİR?

### 📋 Test Süreci Akışı

```
┌──────────────────────────────────────────────────────────────┐
│                    MANUEL TEST SÜRECİ                        │
│                                                              │
│  1️⃣  ANLAMA (Comprendre)                                    │
│     └── User Story / Ticket'ı oku ve anla                    │
│     └── PM ile acceptance criteria'yı netleştir              │
│     └── Domain bilgisini kontrol et                          │
│                                                              │
│  2️⃣  PLANLAMA (Planifier)                                   │
│     └── Test senaryolarını yaz (pozitif + negatif)           │
│     └── Test verilerini hazırla                              │
│     └── Öncelik ve risk analizi yap                          │
│                                                              │
│  3️⃣  UYGULAMA (Exécuter)                                    │
│     └── Adım adım test et                                   │
│     └── Her adımı DÖKÜMante et                              │
│     └── Ekran görüntüsü / video al                          │
│                                                              │
│  4️⃣  RAPORLAMA (Rapporter)                                  │
│     └── Bug bulursan detaylı raporla                         │
│     └── Severity ve Priority belirle                         │
│     └── Developer'a atama yap                                │
│                                                              │
│  5️⃣  DOĞRULAMA (Vérifier)                                   │
│     └── Düzeltme sonrası tekrar test et                      │
│     └── Regresyon etkisi var mı kontrol et                   │
│     └── Test case'i güncelle                                 │
│                                                              │
│  6️⃣  OTOMASYON (Automatiser)                                │
│     └── Manuel testleri otomasyona çevir ← SONRAKİ ADIM!    │
│     └── Cypress + Cucumber ile yaz                           │
│     └── CI/CD'ye entegre et                                  │
│                                                              │
└──────────────────────────────────────────────────────────────┘
```

### 📝 Manuel Test Case Şablonu

```
┌─────────────────────────────────────────────────────────────┐
│ TEST CASE: TC-PAIE-001                                      │
│ Başlık: Yeni çalışan için ilk bordro oluşturma              │
│ Modül: fulll Paie                                           │
│ Öncelik: Yüksek | Tür: Fonksiyonel                         │
├─────────────────────────────────────────────────────────────┤
│                                                             │
│ ÖN KOŞULLAR:                                                │
│ - Expert-comptable olarak sisteme giriş yapılmış            │
│ - "ABC Şirketi" müşterisi mevcut                            │
│ - Convention Collective: IDCC 1486 (Publicité)              │
│                                                             │
│ TEST VERİLERİ:                                              │
│ - Çalışan: Jean DUPONT                                      │
│ - NIR: 1 99 01 75 056 012 97                                │
│ - Sözleşme: CDI, Cadre                                      │
│ - Brüt maaş: 3.500€                                        │
│ - Başlangıç: 01/01/2025                                     │
│                                                             │
│ ADIMLAR:                                                    │
│ 1. Paie modülünü aç                                         │
│ 2. Çalışanlar listesinden "Jean DUPONT" seç                 │
│ 3. Ocak 2025 dönemini seç                                   │
│ 4. "Générer le bulletin" butonuna tıkla                     │
│ 5. Bordroyu incele                                          │
│                                                             │
│ BEKLENEN SONUÇLAR:                                          │
│ ✅ Brüt maaş: 3.500€ olarak görünmeli                      │
│ ✅ URSSAF kesintileri doğru hesaplanmalı                    │
│ ✅ CSG/CRDS doğru hesaplanmalı                              │
│ ✅ Retraite (emeklilik) kesintisi cadre oranında            │
│ ✅ Prélèvement à la source (PAS) doğru uygulanmalı          │
│ ✅ Net مaaş beklenen aralıkta (~2.700-2.800€)              │
│ ✅ Bordro PDF indirilebilmeli                               │
│                                                             │
│ SONUÇ: □ PASS  □ FAIL  □ BLOCKED                           │
│ NOTLAR: _______________________________________________     │
│ TARİH: ___/___/______  TEST EDEN: ___________________      │
│                                                             │
└─────────────────────────────────────────────────────────────┘
```

---

## 📌 BÖLÜM 6: MÜLAKAT İÇİN HAZIRLANMA STRATEJİSİ

### 🎯 Manuel Test Tekniği Gösterimi İçin Hazırlan

Mülakatta sana bir senaryo verip "bunu nasıl test edersin?" diye sorabilirler. İşte hazırlanman gereken konular:

#### Senaryo 1: "Bir çalışanın maaşına %5 zam yapıldı. Bunu nasıl test edersin?"

```
Cevap yapısı:

1. ÖNCE ANLAMA:
   - Zam hangi dönemden itibaren geçerli?
   - Retroaktif mi? (geçmişe dönük)
   - Convention collective'e uygun mu?

2. POZİTİF TEST:
   - Yeni brüt maaşı gir
   - Bordro üret
   - Eski ve yeni maaşı karşılaştır
   - Tüm kesintilerin yeni maaşa göre güncellendiğini doğrula
   - DSN'de yeni maaşın yansıdığını kontrol et

3. NEGATİF TEST:
   - SMIC altında maaş girilmeye çalışılırsa? → Hata mesajı
   - Geçersiz tutar girilirse? (negatif, harf) → Validasyon
   - Dönem ortasında zam → Pro-rata hesaplama doğru mu?

4. SINIR DEĞERLERİ:
   - SMIC tam değerinde (%0 zam)
   - Çok yüksek tutar (100.000€)
   - Ondalık değerler (3.456,78€)

5. REGRESYON:
   - Zam sonrası eski dönem bordroları etkilenmedi mi?
   - DSN tarihçesi bozulmadı mı?
```

#### Senaryo 2: "Bir çalışan 3 gün hastalık izni aldı. Test senaryolarını yaz."

```
POZİTİF:
- 3 gün hastalık girişi → Günlük ücret kesintisi doğru
- IJSS (Sağlık kasası ödemesi) hesaplaması
- Kalan izin bakiyesi güncellemesi
- Bordroya yansıma

NEGATİF:
- Gelecek tarihe hastalık izni → Kabul etmemeli
- Başlangıç > Bitiş tarihi → Hata
- Çakışan izin → Uyarı
- Sözleşmesi bitmemiş çalışana izin → Kabul

BOUNDARY:
- 1 günlük hastalık (minimum)
- 365 günlük hastalık (uzun dönem)
- Ay geçişinde hastalık (28 Ocak → 3 Şubat)
```

---

## 📌 BÖLÜM 7: ÇOK ÖNEMLİ – "BİLMEM GEREKEN" ARAÇLAR

### 🛠️ fulll'da Kullanılan / Kullanılabilecek Test Araçları

| Araç | Kullanım | Öğrenme Önceliği |
|------|----------|-----------------|
| **Jira / Trello** | Bug tracking, ticket yönetimi | 🔴 Yüksek – Zaten bilmen lazım |
| **TestRail / Xray** | Test case yönetimi | 🟡 Orta – Şirkette ne kullanıyorlar bak |
| **Postman** | API manuel test | 🔴 Yüksek – GraphQL sorguları test et |
| **Chrome DevTools** | Network, Console inceleme | 🔴 Yüksek – Her gün kullanacaksın |
| **Figma** | Tasarım speciflerini inceleme | 🟡 Orta – Tasarımcıyla uyum |
| **ProductBoard** | Backlog ve prioritization | 🟢 Düşük – PM kullanır |
| **GitHub** | Versiyon kontrolü | 🔴 Yüksek – PR review, issue |
| **Allure Report** | Test raporları | 🟡 Orta – Otomasyon aşamasında |

### 🔍 Chrome DevTools ile Manuel Test (HER GÜN KULLANACAKSIN!)

```
Manuel test yaparken DevTools'u aç (F12):

1. NETWORK SEKMESI:
   - GraphQL isteklerini izle
   - Request/Response body'yi oku
   - Status kodlarını kontrol et
   - Yavaş yükleme sorunlarını tespit et

2. CONSOLE SEKMESI:
   - JavaScript hatalarını yakala
   - "TypeError", "NetworkError" vb.
   - Bu hataları bug raporuna ekle

3. APPLICATION SEKMESI:
   - LocalStorage/SessionStorage kontrol et
   - Cookie'leri incele
   - Auth token'ları gör

4. ELEMENTS SEKMESI:
   - UI bozuklukları tespit et
   - CSS sorunlarını incele
   - Responsive kontrol (farklı ekran boyutları)
```

---

## 📌 BÖLÜM 8: HIZLI BAŞLANGIÇ PLANI (Manuel Test İçin)

### 📅 Bu Hafta Yap

| # | Görev | Süre | Kaynak |
|---|-------|------|--------|
| 1 | YouTube'da "fulll paie" videolarını izle | 2 saat | YouTube |
| 2 | Fransız bordro temellerini öğren (SMIC, DSN, cotisations) | 3 saat | web araştırma |
| 3 | Net-entreprises.fr'de DSN-val aracını keşfet | 1 saat | net-entreprises.fr |
| 4 | OpenPaye.co'da bordro simülasyonu yap | 2 saat | openpaye.co |
| 5 | fulll.fr sitesinin tüm ürün sayfalarını oku | 2 saat | fulll.fr |
| 6 | Chrome DevTools Network sekmesini öğren | 1 saat | Chrome |
| 7 | 5 adet örnek test case yaz (yukarıdaki şablonla) | 2 saat | bu dosya |

### 📅 Gelecek Hafta Yap

| # | Görev | Süre |
|---|-------|------|
| 8 | Bir bordro yazılımında (OpenPaye vb.) pratik yap | 3 saat |
| 9 | Convention Collective kavramını derinleştir | 2 saat |
| 10 | Bug raporu yazma pratiği yap | 1 saat |
| 11 | Mülakat senaryolarını prova et | 2 saat |
| 12 | Postman ile GraphQL sorgusu yaz | 2 saat |

---

## 🚀 ÖZET: 3 CÜMLEDE

1. **fulll Paie**, expert-comptables için geliştirilmiş bir **bordro yönetim SaaS** uygulamasıdır ve sen bu ürünü test edeceksin.

2. **Dışarıdan erişim YOK** – ama YouTube videoları, fulll.fr sitesi ve benzer ücretsiz bordro araçları (OpenPaye, DSN-val) ile pratik yapabilirsin.

3. **Manuel testte** asıl odak noktası: bordro hesaplama doğruluğu, DSN beyan uyumu, convention collective parametreleri ve kullanıcı iş akışlarının doğru çalışması.
