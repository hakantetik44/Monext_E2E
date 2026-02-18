# 🔍 fulll İş İlanı Derin Analizi + Test Edeceğin Uygulama

---

## 📌 BÖLÜM 1: İŞ İLANINDA TAM OLARAK NE YAZIYOR?

İlanı cümle cümle analiz edelim:

### 📝 İlan Metni → Analiz

| İlanda Yazan (Orijinal) | Türkçe Anlamı | Sana Ne Ifade Ediyor? |
|------------------------|---------------|----------------------|
| *"Testeur·se QA"* | QA Test Mühendisi | Hem manuel hem otomasyon yapacaksın |
| *"tester et valider les **paramétrages métiers**"* | **İş kuralı parametrelerini** test edip doğrulamak | Bordro hesaplama kurallarını test edeceksin |
| *"indispensables au bon fonctionnement"* | Ürünün doğru çalışması için vazgeçilmez | Kritik iş kuralları – hata toleransı düşük! |
| *"des produits de la **Gamme Paie**"* | **Bordro Ürün Ailesi** ürünlerinin | Tek uygulama değil, birden fazla modül! |
| *"squad composée d'une PM, un architecte et 4 devs"* | PM, mimar ve 4 dev'den oluşan ekip | Agile/Scrum squad yapısı |

### 🎯 "Paramétrage métier" = ASIL İŞİN

Bu terimi iyi anla çünkü mülakatta sorarlar!

```
"Paramétrage métier" şu demek:
─────────────────────────────────────────────────
Bordro yazılımında KURALLARI DOĞRU AYARLANDIĞINI TEST ETMEK.

Örnekler:
• Convention Collective IDCC 1486 (Publicité) seçildiğinde,
  fazla mesai oranı %25 mi hesaplanıyor?
  → Bu bir "paramétrage métier" testi!

• Bir "cadre" (yönetici) çalışan ile bir "non-cadre" (işçi) arasında
  emeklilik kesintisi oranı farklı mı?
  → Bu bir "paramétrage métier" testi!

• DSN'de çalışanın başlangıç tarihi, sözleşme tipi (CDI/CDD)
  doğru yansıyor mu?
  → Bu bir "paramétrage métier" testi!

KISACA: İş kuralı = Hesaplama formülü + Yasal zorunluluk + Sektör kuralı
```

---

## 📌 BÖLÜM 2: İLANDA BELİRTİLEN GÖREVLER – DETAYLI ANALİZ

### 📋 Günlük Görevlerin (İlandan birebir)

#### 1️⃣ "Élaboration de la stratégie de test" (Test Stratejisi Hazırlama)

```
Ne yapacaksın:
├── Yeni bir özellik geldiğinde test planı oluştur
├── Hangi testler gerekli? (fonksiyonel, regresyon, smoke)
├── Test kapsamını belirle (scope)
├── Risk analizi yap (nerelerde hata olabilir?)
└── PM ile birlikte acceptance criteria belirle

Manuel test bağlamında:
→ "Bu ay yeni convention collective IDCC 3248 eklendi.
   Hangi senaryoları test etmeliyiz?" sorusuna cevap vereceksin.
```

#### 2️⃣ "Conception des tests automatisés robustes et évolutifs (E2E, API, régression)"

```
Ne yapacaksın:
├── Cypress ile E2E testleri yaz (UI akışları)
├── Cypress ile API testleri yaz (GraphQL sorguları)
├── Regresyon test suite'i oluştur
└── Testlerin bakımını yap (evrimleşebilir = maintenance kolay)

⚠️ ÖNEMLI: "E2E, API, régression" yazıyor!
→ 3 tip test yapacaksın:
  1. E2E = Baştan sona kullanıcı senaryoları
  2. API = Backend GraphQL sorgularını test
  3. Régression = Her release'de eski özelliklerin bozulmadığını doğrula
```

#### 3️⃣ "Mise en place et maintenance des jeux de données"

```
Ne yapacaksın:
├── Test verileri oluştur (çalışanlar, şirketler, bordrolar)
├── Verilerin PRODUCTION'ı etkilemediğinden emin ol
├── Test ortamını temiz tut
└── Her test çalıştırmadan önce verileri hazırla/temizle

Bu ÇOK ÖNEMLİ çünkü:
→ Bordro verileri hassas (maaşlar, sosyal güvenlik numaraları)
→ Yanlış veri production'a giderse yasal sorun!
→ Test verileri izole ve güvenli olmalı
```

#### 4️⃣ "Analyse et reporting des anomalies puis contrôle des corrections"

```
Ne yapacaksın:
├── Bug buldukça analiz et (root cause)
├── Detaylı bug raporu yaz
├── Developer düzelttikten sonra tekrar test et (re-test)
└── Düzeltmenin başka şeyleri bozmadığını doğrula (regresyon)
```

#### 5️⃣ "Mise à jour de la documentation des produits"

```
Ne yapacaksın:
├── Test dokümantasyonunu güncelle
├── Ürün dokümantasyonunu güncelle
└── Yeni özellikler eklendiğinde help center'ı güncelle (fulll.help)
```

---

## 📌 BÖLÜM 3: GERÇEK UYGULAMA ARAYÜZÜ – BU EKRANLARI TEST EDECEKSİN!

fulll.fr/mission-sociale sayfasından gerçek arayüz ekranlarını inceledim. 
İşte test edeceğin **10 ana ekran/modül:**

### 🖥️ Bordro İş Akışı (Tüm adımlar sırayla)

```
┌────────────────────────────────────────────────────────────────┐
│                  BORDRO SÜRECİ (Paie Workflow)                 │
│                                                                │
│  ADIM 1: Création du salarié                                   │
│  ══════════════════════════                                    │
│  📋 Çalışan oluşturma ekranı                                  │
│  → "Nouvel individu / Identité" başlığı                       │
│  → Wizard (adım adım): Identité → État civil →                │
│     Coordonnées bancaires → Comptabilité → Contacts et droit   │
│  → Drag & drop ile belge yükleme (kimlik, RIB, adres belgesi) │
│  → Portalı açma seçeneği                                      │
│                                                                │
│  🧪 MANUEL TEST:                                               │
│  ✅ Tüm zorunlu alanlar boş bırakılınca hata veriyor mu?      │
│  ✅ NIR (sosyal güvenlik no) formatı doğrulanıyor mu?          │
│  ✅ Geçersiz IBAN redddiliyor mu?                              │
│  ✅ Belge yükleme çalışıyor mu? (PDF, JPEG)                   │
│  ✅ Wizard adımları arası geçiş sorunsuz mu?                   │
│                                                                │
│  ADIM 2: Modifications de la fiche salarié                     │
│  ═══════════════════════════════════════════                    │
│  📋 Çalışan kartı güncelleme                                  │
│  → Çalışan, şirket veya gestionnaire değiştirebilir           │
│                                                                │
│  🧪 MANUEL TEST:                                               │
│  ✅ Adres değişikliği DSN'e yansıyor mu?                      │
│  ✅ Maaş değişikliği bir sonraki bordroya yansıyor mu?        │
│  ✅ Değişiklik geçmişi (audit trail) tutuluyor mu?            │
│                                                                │
│  ADIM 3: Saisie des absences                                   │
│  ══════════════════════════                                    │
│  📋 İzin/devamsızlık girişi                                   │
│  → Takvim üzerinden tıklayarak giriş                          │
│  → Validation workflow (onay akışı)                            │
│  → Ekip görünümü (manager/chef d'entreprise)                   │
│                                                                │
│  🧪 MANUEL TEST:                                               │
│  ✅ Takvimde tıklayarak izin oluşturuluyor mu?                │
│  ✅ Çakışan izinlerde uyarı veriyor mu?                       │
│  ✅ Onay akışı çalışıyor mu? (talep → onay → bordroya yansıma)│
│  ✅ Yarım gün izin seçilebiliyor mu?                          │
│                                                                │
│  ADIM 4: Saisie des primes                                     │
│  ════════════════════════                                      │
│  📋 Prim ve değişken eleman girişi                             │
│  → Toplu (accélérée) giriş modu                               │
│  → Aylık ilerleme durumu grid görünümünde                      │
│                                                                │
│  🧪 MANUEL TEST:                                               │
│  ✅ Prim miktarı negatif girilebilir mi? (hata vermeli)       │
│  ✅ Toplu giriş doğru çalışıyor mu?                           │
│  ✅ Grid'de değişiklikler anında kaydediliyor mu?              │
│                                                                │
│  ADIM 5: Validation des variables de paie                      │
│  ════════════════════════════════════════                       │
│  📋 EVP (Éléments Variables de Paie) onay ekranı              │
│  → "Grille mensuelle EVP" başlığı                              │
│  → İlerleme durumu görsel göstergeleri                         │
│  → Değiştirme imkânı                                          │
│  → Multi-exercice erişimi                                      │
│                                                                │
│  🧪 MANUEL TEST:                                               │
│  ✅ Tüm değişkenler doğru listeleniyor mu?                    │
│  ✅ Onaylanmamış değişkenlerle bordro üretilebilir mi? (hayır!)│
│  ✅ Excel export/import çalışıyor mu?                          │
│                                                                │
│  ADIM 6: Génération des bulletins                              │
│  ════════════════════════════════                               │
│  📋 Bordro üretimi                                             │
│  → "Bulletin de Paie N°2" gibi numaralı bordro                │
│  → Şirket bilgileri: SIRET, APE, adres                        │
│  → Çalışan bilgileri: ad, adres, NIR                          │
│  → Convention Collective gösterimi                             │
│  → Hesaplama detayı: bir kalemme tıklayınca formül görünür     │
│  → Gerçek zamanlı dinamik güncelleme                           │
│                                                                │
│  🧪 MANUEL TEST:                                               │
│  ✅ Brüt → Net hesaplama doğru mu?                            │
│  ✅ Part salariale (çalışan payı) doğru mu?                   │
│  ✅ Part patronale (işveren payı) doğru mu?                   │
│  ✅ TOTAL BRUT doğru mu?                                      │
│  ✅ Convention Collective kuralları uygulanmış mı?             │
│  ✅ Hesaplama detayına tıklayınca doğru formül mü?            │
│                                                                │
│  ADIM 7: Validation du bulletin                                │
│  ══════════════════════════                                    │
│  📋 Bordro onayı (dijital workflow)                            │
│  → "Tâches > Validation des bulletins de salaire"              │
│  → Bordro PDF önizlemesi                                       │
│  → Acceptation (kabul) / Refus (red) butonları                │
│  → RGPD uyumlu (email yok, portal üzerinden)                  │
│                                                                │
│  🧪 MANUEL TEST:                                               │
│  ✅ Onay butonu → durum "Onaylandı" oluyor mu?                │
│  ✅ Red butonu → gestionnaire'e bildirim gidiyor mu?          │
│  ✅ PDF önizlemesi doğru mu?                                   │
│  ✅ Onaylanan bordro değiştirilebilir mi? (hayır olmalı!)     │
│                                                                │
│  ADIM 8: Accès au bulletin dans le GED ou le coffre            │
│  ══════════════════════════════════════════════════             │
│  📋 Bordro erişimi (Elektronik arşiv veya dijital kasa)       │
│  → GED (Gestion Électronique des Documents)                   │
│  → Coffre-fort numérique                                      │
│  → RGPD uyumlu çalışan erişimi                                │
│                                                                │
│  🧪 MANUEL TEST:                                               │
│  ✅ Çalışan kendi bordrosunu görebiliyor mu?                  │
│  ✅ Başka birinin bordrosunu göremez değil mi? (güvenlik!)     │
│  ✅ PDF indirilebiliyor mu?                                    │
│                                                                │
│  ADIM 9: Déclaratif de paie (DSN Dashboard)                    │
│  ═══════════════════════════════════════════                    │
│  📋 DSN yönetim dashboard'u                                   │
│  → "État d'avancement" (ilerleme durumu) tablosu               │
│  → Sütunlar: Salariés, Entrées, Sorties, Absences,            │
│     Bulletins, DPAE, DSN, DSN fin de contrat, DSN arrêt       │
│  → Renkli durum göstergeleri:                                  │
│     🟢 Totalement réalisé (tamamen tamamlandı)                │
│     🟡 Partiellement réalisé (kısmen tamamlandı)              │
│     🔴 Non réalisé (tamamlanmadı)                              │
│                                                                │
│  🧪 MANUEL TEST:                                               │
│  ✅ Tüm çalışanların durumu doğru gösteriliyor mu?            │
│  ✅ DSN gönderim durumu gerçek zamanlı güncelliyor mu?        │
│  ✅ Hatalı DSN'ler kırmızı işaretli mi?                      │
│  ✅ Filtreleme ve sıralama çalışıyor mu?                      │
│                                                                │
│  ADIM 10: Accès au dashboard                                   │
│  ═══════════════════════════                                   │
│  📋 Genel gösterge paneli                                     │
│  → Raporlama göstergeleri                                     │
│  → 360° dosya görünümü                                        │
│  → Performans metrikleri                                      │
│                                                                │
│  🧪 MANUEL TEST:                                               │
│  ✅ Dashboard verileri doğru mu?                              │
│  ✅ Grafikler yükleniyor mu?                                  │
│  ✅ Filtreler çalışıyor mu? (dönem, müşteri)                  │
│                                                                │
└────────────────────────────────────────────────────────────────┘
```

### 🖥️ Ek Ekran: Fiche Salariés (Çalışan Kartları)

fulll.fr/outils/paie sayfasında gördüğüm gerçek arayüz:

```
┌─────────────────────────────────────────────────────────────┐
│  Fiches salariés (Çalışan Kartları Grid Görünümü)           │
│                                                             │
│  [Betty BEAUREGARD] [BB] - Assistante commerciale           │
│   BEAUREGARD - Employé - CDI 01/02/2022 - 01/03/2023       │
│                                                             │
│  [William BERTHENOT] [WB] - Assistant Commercial            │
│   BERTHENOT - Employé - CDI 11/01/2023                      │
│                                                             │
│  [Tom DURANT] [TD] - Secrétaire comptable                   │
│   DURANT - Employé - CDI 01/04/2022                         │
│                                                             │
│  [Fernand FOCHE] [FF] - Chef d'atelier principal            │
│   FOCHESS - Cadre - CDI 25/07/2021                          │
│                                                             │
│  ... (Benoît GRAND, Tom JOUEUR, Bella LESTRANGE, vb.)       │
│                                                             │
│  Her kartta: İsim, Pozisyon, Sözleşme tipi,                │
│              Başlangıç/Bitiş tarihi, Avatar                 │
│                                                             │
│  [+ AJOUTER UN INDIVIDU] butonu sağ üstte                  │
│  [FICHES] sekmesi aktif                                     │
└─────────────────────────────────────────────────────────────┘
```

---

## 📌 BÖLÜM 4: İLANDAKİ BİLGİLERDEN ÇIKARILANLAR

### ✅ İlanda AÇIKÇA yazanlar:

| Bilgi | İlandan Kaynak |
|-------|---------------|
| **Ürün:** Gamme Paie | *"produits de la Gamme Paie"* |
| **Test türleri:** E2E, API, Regresyon | *"E2E, API, régression"* |
| **Araçlar:** Cypress, Cucumber, Gherkin | *"Cypress, Cucumber et Gherkin au quotidien"* |
| **Ekip:** PM + Architect + 4 Dev | *"squad composée..."* |
| **Deneyim:** 3+ yıl | *"au moins 3 ans"* |
| **Konum:** Lyon, 3 gün remote | *"Lyon, télétravail 3j/sem"* |
| **Maaş:** 38.700€ - 44.000€ brüt/yıl | *"entre 38 700€ et 44 000€"* |

### ⚠️ İlanda YAZMAYANLAR ama ortaya çıkan gerçekler:

| Gizli Bilgi | Nasıl Keşfettim |
|-------------|-----------------|
| **GraphQL** kullanılıyor | Teknoloji sayfasından (WttJ) |
| **TypeScript** ile testler yazılıyor olabilir | Şirket TS kullanıyor |
| **AWS** üzerinde çalışıyor | Teknoloji stack'i |
| **PostgreSQL** veritabanı | Altyapı bilgileri |
| **React** frontend | Frontend teknolojisi |
| **fulll.help** help center var | Dokümantasyon platformu |
| **ISO 27001** sertifikası | Güvenlik standardı |
| **Convention Collective** %85 kapsamada | Ürün özelliği |

### 🔍 İlandaki "gizli mesajlar":

```
1. "tests automatisés ROBUSTES et ÉVOLUTIFS"
   → Sadece test yaz değil, kaliteli ve bakımı kolay test yaz!
   → POM pattern, reusable steps, clean code bekliyorlar.

2. "sans impacter la production"
   → Test verileri konusunda ÇOK HASSASLAR
   → İzole test ortamı kurma deneyimin olmalı
   → Cypress fixtures, API ile data oluşturma/silme bilmelisin

3. "contrôle des corrections apportées"  
   → Sadece bug bul değil, düzeltmeyi de doğrula
   → Re-test + regresyon test bilgin olmalı

4. "mise à jour de la documentation"
   → Sadece test yazma, dokümantasyon da yap
   → Teknik yazım becerisi önemli
```

---

## 📌 BÖLÜM 5: UYGULAMA ERİŞİLEBİLİRLİĞİ (GÜNCELLEME)

### 🌐 Erişebileceğin Kaynaklar

| Kaynak | URL | Ne Göreceksin? |
|--------|-----|----------------|
| 🖥️ **Arayüz ekranları** | fulll.fr/mission-sociale | 10 adımlık iş akışı + gerçek ekran görüntüleri |
| 🛠️ **Ürün detayları** | fulll.fr/outils/paie | Çalışan kartları, özellikler |
| 📖 **Convention Collective listesi** | paie.fulll.help/... | Desteklenen sözleşmeler |
| 📱 **Mobil uygulama** | Google Play "Portail RH by Fulll" | Uygulama açıklaması + ekran görüntüleri |
| 🎥 **YouTube videoları** | YouTube'da "fulll paie" ara | Demo videoları |
| 📰 **Blog** | fulll.fr/blllog | Ürün güncellemeleri |
| 📊 **Veille sociale** | fulll.fr/veille-sociale | Mevzuat takip sistemi |
| 🔗 **API & Connectivité** | fulll.fr/connectivite | Entegrasyon bilgileri |

### ⚠️ Erişemeyeceğin Kaynaklar

| Kaynak | Neden? |
|--------|--------|
| ❌ Gerçek uygulama | B2B SaaS, müşteri girişi gerekli |
| ❌ Help center detay | fulll.help giriş gerektiriyor |
| ❌ API dokümantasyonu | İç kullanım, herkese açık değil |
| ❌ Test ortamı | Sadece çalışanlar erişebilir |

---

## 📌 BÖLÜM 6: MÜLAKATA HAZIRLANIRILKEN BİLMEN GEREKEN TEMEL KAVRAMLAR

### 🇫🇷 Fransız Bordro Terimleri Sözlüğü

| Fransızca | Türkçe | Açıklama |
|-----------|--------|----------|
| **Bulletin de paie** | Bordro/Maaş pusulası | Aylık maaş belgesi |
| **Salarié** | Çalışan/Ücretli | Bordrolu çalışan |
| **Cadre** | Yönetici | Farklı kesinti oranları var |
| **Non-cadre** | İşçi/Çalışan | Standart kesinti oranları |
| **Brut** | Brüt | Kesinti öncesi maaş |
| **Net** | Net | Kesinti sonrası maaş |
| **Cotisations sociales** | Sosyal kesintiler | URSSAF, emeklilik, sağlık |
| **DSN** | Sosyal beyan | Zorunlu aylık e-beyan |
| **Convention Collective** | Toplu iş sözleşmesi | Sektöre özel kurallar |
| **IDCC** | Sözleşme kodu | Her CC'nin benzersiz numarası |
| **EVP** | Değişken elemanlar | Primler, mesai, izinler |
| **CDI** | Belirsiz süreli sözleşme | Süresiz iş sözleşmesi |
| **CDD** | Belirli süreli sözleşme | Süreli iş sözleşmesi |
| **SMIC** | Asgari ücret | ~1.801€/ay brüt (2025) |
| **URSSAF** | Sosyal güvenlik kurumu | Prim toplayan kurum |
| **CSG/CRDS** | Genel sosyal katkı | Zorunlu kesintiler |
| **PAS** | Kaynaktan vergi | Gelir vergisi kesintisi |
| **GED** | Elektronik belge yönetimi | Dijital arşiv |
| **NIR** | Sosyal güvenlik numarası | 13 haneli numara |
| **RIB** | Banka bilgisi | Maaş ödemesi için |
| **DPAE** | İşe başlama beyanı | Yeni çalışan bildirimi |

---

## 🚀 SONUÇ VE ÖNEMLİ ÇIKARIMLAR

### 1. Test edeceğin uygulama:
**fulll paie** – Expert-comptables için bordro yönetim SaaS yazılımı

### 2. Test edeceğin ekranlar (ilandan kesinleşen):
- Çalışan oluşturma/güncelleme
- İzin ve devamsızlık yönetimi  
- Prim ve değişken eleman girişi
- Bordro üretimi ve hesaplama doğrulaması
- DSN beyan yönetimi
- Convention Collective parametreleri

### 3. Test türlerin:
- **Manuel test** → Paramétrage métier doğrulaması
- **E2E otomasyon** → Cypress ile kullanıcı akışları
- **API otomasyon** → GraphQL sorguları (Cypress cy.request)
- **Regresyon** → Her sprint'te mevcut özelliklerin kontrolü

### 4. İlandan KESIN bilinen araçlar:
- ✅ Cypress
- ✅ Cucumber  
- ✅ Gherkin

### 5. İlandan ÇIKARDIĞın bilgiler:
- ⚡ GraphQL (backend API)
- ⚡ TypeScript (muhtemelen testlerde de)
- ⚡ React (frontend framework)
- ⚡ PostgreSQL (database)
- ⚡ AWS (hosting)
