# 🇫🇷🇹🇷 FULLL PAİE – FRANSIZCA BORDRO & MANUEL TEST REHBERİ

> **Amaç:** fulll'da QA tester olarak çalışırken karşılaşacağın TÜM Fransızca 
> terimleri, bordro yapısını ve iş kurallarını Türkçe açıklamalarla öğrenmek.

---

## 📖 BÖLÜM 1: BORDRO PUSULASI (BULLETIN DE PAİE) YAPISI

### 🔷 Bordronun 7 Zorunlu Bölgesi (2025 modeli)

```
┌─────────────────────────────────────────────────────────────┐
│  📄 BULLETIN DE PAIE (Bordro Pusulası)                      │
│                                                             │
│  ┌─────────────────────────────────────────────────────┐    │
│  │ BÖLGE 1: EMPLOYEUR (İşveren Bilgileri)              │    │
│  │ • Dénomination sociale = Şirket adı                 │    │
│  │ • SIRET = Şirket kimlik no (14 hane)                │    │
│  │ • Code APE/NAF = Faaliyet kodu                      │    │
│  │ • Adresse = Adres                                   │    │
│  │ • Convention collective = Toplu iş sözleşmesi       │    │
│  │ • N° URSSAF = Sosyal güvenlik sicil no              │    │
│  └─────────────────────────────────────────────────────┘    │
│                                                             │
│  ┌─────────────────────────────────────────────────────┐    │
│  │ BÖLGE 2: SALARIÉ (Çalışan Bilgileri)                │    │
│  │ • Nom, Prénom = Soyad, Ad                           │    │
│  │ • NIR = Sosyal güvenlik no (13 hane)                │    │
│  │ • Emploi = Pozisyon/Görev                           │    │
│  │ • Qualification = Yetkinlik seviyesi                │    │
│  │ • Classification = Sınıflandırma (cadre/non-cadre)  │    │
│  │ • Date d'entrée = İşe giriş tarihi                 │    │
│  │ • Ancienneté = Kıdem                                │    │
│  └─────────────────────────────────────────────────────┘    │
│                                                             │
│  ┌─────────────────────────────────────────────────────┐    │
│  │ BÖLGE 3: RÉMUNÉRATION BRUTE (Brüt Ücret Detayı)    │    │
│  │                                                     │    │
│  │ Salaire de base = Temel maaş                        │    │
│  │   → 151,67h × taux horaire = aylık temel maaş      │    │
│  │                                                     │    │
│  │ Heures supplémentaires = Fazla mesai                 │    │
│  │   → İlk 8 saat: %25 zamlı                          │    │
│  │   → Sonraki saatler: %50 zamlı                      │    │
│  │                                                     │    │
│  │ Primes = Primler                                    │    │
│  │   → Prime d'ancienneté = Kıdem primi                │    │
│  │   → Prime de 13ème mois = 13. maaş                  │    │
│  │   → Prime de transport = Ulaşım primi               │    │
│  │                                                     │    │
│  │ Avantages en nature = Ayni yardımlar                │    │
│  │   → Voiture = Araç                                  │    │
│  │   → Logement = Konut                                │    │
│  │   → Repas = Yemek                                   │    │
│  │                                                     │    │
│  │ ══════════════════════════════════════               │    │
│  │ TOTAL BRUT = TOPLAM BRÜT MAAŞ                      │    │
│  └─────────────────────────────────────────────────────┘    │
│                                                             │
│  ┌─────────────────────────────────────────────────────┐    │
│  │ BÖLGE 4: COTISATIONS (Kesintiler Tablosu)           │    │
│  │                                                     │    │
│  │ Başlık: Désignation | Assiette | Taux | Montant    │    │
│  │         (Açıklama)  | (Matrah) | (Oran)| (Tutar)   │    │
│  │                                                     │    │
│  │ İki sütun:                                          │    │
│  │ • Part salariale = Çalışan payı (maaştan kesilir)   │    │
│  │ • Part patronale = İşveren payı (ilave yük)         │    │
│  │                                                     │    │
│  │ 5 ana kategori:                                     │    │
│  │ 1. SANTÉ (Sağlık)                                   │    │
│  │ 2. RETRAITE (Emeklilik)                             │    │
│  │ 3. CHÔMAGE (İşsizlik)                               │    │
│  │ 4. FAMILLE (Aile)                                   │    │
│  │ 5. AUTRES (Diğer)                                   │    │
│  └─────────────────────────────────────────────────────┘    │
│                                                             │
│  ┌─────────────────────────────────────────────────────┐    │
│  │ BÖLGE 5: NET TUTARLAR                               │    │
│  │                                                     │    │
│  │ Net à payer avant impôt = Vergi öncesi net          │    │
│  │ Montant net social = Net sosyal tutar (2023+)       │    │
│  │ Net imposable = Vergiye tabi net                    │    │
│  │ Impôt sur le revenu (PAS) = Gelir vergisi kesintisi │    │
│  │ Net à payer = ELE GEÇEN NET MAAŞ                   │    │
│  └─────────────────────────────────────────────────────┘    │
│                                                             │
│  ┌─────────────────────────────────────────────────────┐    │
│  │ BÖLGE 6: CONGÉS (İzin Bilgileri)                    │    │
│  │ • Acquis = Kazanılan izin                           │    │
│  │ • Pris = Kullanılan izin                            │    │
│  │ • Solde = Kalan izin                                │    │
│  └─────────────────────────────────────────────────────┘    │
│                                                             │
│  ┌─────────────────────────────────────────────────────┐    │
│  │ BÖLGE 7: CUMUL ANNUEL (Yıllık Kümülatif)           │    │
│  │ • Cumul brut = Yıl başından bugüne toplam brüt      │    │
│  │ • Cumul net imposable = Toplam vergiye tabi net     │    │
│  └─────────────────────────────────────────────────────┘    │
└─────────────────────────────────────────────────────────────┘
```

---

## 📖 BÖLÜM 2: KESİNTİLER DETAYI (COTISATIONS SOCIALES)

### 💰 Hesaplama Mantığı

```
BRÜT MAAŞ
  - Cotisations salariales (çalışan kesintileri, ~%22)
  = NET AVANT IMPÔT (vergi öncesi net)
  - PAS (gelir vergisi, Prélèvement à la Source)
  = NET À PAYER (ele geçen maaş)

İŞVEREN TARAFI:
  BRÜT MAAŞ + Cotisations patronales (~%42) = TOPLAM İŞVEREN MALİYETİ
```

### 📊 2025 Kesinti Oranları Tablosu

| Fransızca Terim | Türkçe | Çalışan (%) | İşveren (%) |
|----------------|--------|-------------|-------------|
| **SANTÉ** | **SAĞLIK** | | |
| Assurance maladie | Hastalık sigortası | 0% | 7% veya 13% |
| Complémentaire santé | Tamamlayıcı sağlık | Değişken | ≥%50 |
| **RETRAITE** | **EMEKLİLİK** | | |
| Vieillesse plafonnée | Emeklilik (tavanlı) | 6,90% | 8,55% |
| Vieillesse déplafonnée | Emeklilik (tavansız) | 0,40% | 2,02% |
| AGIRC-ARRCO T1 | Tamamlayıcı emeklilik | 3,15% | 4,72% |
| AGIRC-ARRCO T2 | Tamamlayıcı emeklilik 2 | 8,64% | 12,95% |
| **CHÔMAGE** | **İŞSİZLİK** | | |
| Assurance chômage | İşsizlik sigortası | 0% | 4,05% |
| **FAMILLE** | **AİLE** | | |
| Allocations familiales | Aile yardımı | 0% | 3,45% veya 5,25% |
| **CSG/CRDS** | **GENEL KATKI** | | |
| CSG déductible | Vergiden düşülebilir | 6,80% | - |
| CSG non déductible | Düşülemeyen CSG | 2,40% | - |
| CRDS | Borç ödeme katkısı | 0,50% | - |

### ⚠️ TEST İÇİN KRİTİK BİLGİLER:

```
📌 PMSS 2025 = 3.925 € (Plafond Mensuel Sécurité Sociale)
   → "Tavanlı" kesintiler bu tutara kadar hesaplanır
   
📌 SMIC 2025 = 1.801,80 €/ay brüt (11,88 €/saat)
   → Hiçbir maaş bunun altında olamaz!
   
📌 CSG/CRDS matrahı = Brüt maaşın %98,25'i
   → Tam brüt değil, %1,75 abattement var
   
📌 Cadre vs Non-cadre farkı:
   → Cadre = AGIRC-ARRCO T2 uygulanır (yüksek gelir dilimleri)
   → Non-cadre = Sadece T1 uygulanır
   → APEC katkısı sadece Cadre'lara uygulanır
```

---

## 📖 BÖLÜM 3: DSN (DÉCLARATION SOCIALE NOMINATIVE)

### 🔷 DSN Nedir?

```
DSN = Her ay bordrodan sonra, çalışan bilgilerini
      sosyal güvenlik kurumlarına gönderen DİJİTAL BEYAN

Türkiye'deki muadili: SGK MUHSGK/e-Bildirge (yaklaşık)

Ne gönderiyor?
├── Maaş bilgileri
├── Kesinti tutarları  
├── İşe giriş/çıkışlar
├── Hastalık/izin bilgileri
└── Vergi bilgileri (PAS)
```

### 📋 DSN Türleri

| Tür | Fransızca | Açıklama | Ne Zaman? |
|-----|-----------|----------|-----------|
| Aylık | DSN mensuelle / périodique | Aylık rutin beyan | Her ay bordro sonrası |
| Olaya bağlı | DSN événementielle | Özel olay beyanı | 5 gün içinde |

### 🔴 Olay DSN'leri (Événementielle)

| Olay | Fransızca | Açıklama |
|------|-----------|----------|
| Hastalık | Arrêt maladie | Çalışan hastalandı |
| İş kazası | Accident du travail | İş yerinde kaza |
| İşten çıkış | Fin de contrat | Sözleşme sona erdi |
| Doğum izni | Congé maternité | Anne izni |
| Babalık izni | Congé paternité | Baba izni |

### ⚠️ DSN'de Sık Yapılan Hatalar (TEST SENARYOLARI!)

```
🔴 Hata 1: MNS yanlış tarih
   → Montant Net Social yanlış aya bağlanmış
   → TEST: Bordro tarihi ile DSN tarihi uyuşuyor mu?

🔴 Hata 2: Part patronale eksik
   → İşveren payı bildirilmemiş
   → TEST: Tüm kesintilerin işveren payı DSN'de var mı?

🔴 Hata 3: Yanlış sözleşme kodu
   → CDI yerine CDD veya tam tersi
   → TEST: Çalışan sözleşme tipi DSN'de doğru mu?

🔴 Hata 4: Gün sayısı 0
   → Çalışma günü alanı boş/sıfır bırakılmış
   → TEST: Aktif çalışanın gün sayısı > 0 mı?

🔴 Hata 5: SIRET URSSAF eksik
   → Kurum SIRET numarası girilmemiş
   → TEST: URSSAF SIRET alanı dolu mu?
```

---

## 📖 BÖLÜM 4: CONVENTION COLLECTIVE (TOPLU İŞ SÖZLEŞMESİ)

### 🔷 CC Nedir?

```
Convention Collective = Sektöre özel iş kuralları sözleşmesi

Her sektörün kendine ait kuralları var:
• Asgari maaş (SMIC'den yüksek olabilir)
• Kıdem primi kuralları
• Fazla mesai oranları
• İzin süreleri
• İşten çıkarma koşulları

IDCC = Her CC'nin benzersiz kimlik numarası (1-4 haneli)
```

### 📋 fulll'da Modellenen Önemli CC'ler

| IDCC | Sektör (FR) | Sektör (TR) | Neden Önemli? |
|------|------------|-------------|---------------|
| 0000 | Droit du travail | Genel İş Hukuku | Varsayılan kurallar |
| 0016 | Transports routiers | Kara taşımacılığı | Büyük sektör |
| 0044 | Chimie | Kimya | Özel primler |
| 0086 | Publicité | Reklamcılık | Sık kullanılan |
| 0176 | Industries pharmaceutiques | İlaç sanayi | Düzenleme yoğun |
| 0573 | Commerces de gros | Toptan ticaret | Yaygın |
| 0787 | Experts-comptables et CAC | Muhasebeciler | fulll'un müşterileri! |
| 0843 | Boulangerie pâtisserie | Fırıncılık-pastacılık | Yaygın KOBİ |
| 0953 | Charcuterie de détail | Şarküteri | Yaygın KOBİ |
| 1090 | Automobile | Otomotiv | Büyük sektör |
| 1486 | Bureaux d'études | Mühendislik büroları | Teknoloji sektörü |
| 3127 | Services à la personne | Kişisel hizmetler | Büyüyen sektör |

### ⚠️ CC Test Senaryoları

```
SENARYO 1: CC değişikliği
  → Bir çalışanın CC'si IDCC 0086'dan IDCC 1486'ya değişti
  → TEST: Maaş pusulasında doğru CC gösteriliyor mu?
  → TEST: Yeni CC'nin kıdem primi kuralları uygulanıyor mu?

SENARYO 2: CC minimum maaş kontrolü
  → IDCC 0787: Muhasebeciler için minimum 1.950€ diyelim
  → SMIC: 1.801,80€
  → TEST: Sistem SMIC değil CC minimum'u mu uyguluyor?

SENARYO 3: CC'ye özel fazla mesai
  → Bazı CC'lerde ilk 4 saat %10, sonraki %25
  → Genel kural ise ilk 8 saat %25
  → TEST: Hangi kural uygulanıyor? CC'ye özel mi?
```

---

## 📖 BÖLÜM 5: ÇALIŞAN YÖNETİMİ (GESTION DES SALARIÉS)

### 🔷 Çalışan Oluşturma Süreci

```
1. IDENTITÉ (Kimlik)
   ├── Nom = Soyad
   ├── Prénom = Ad
   ├── Date de naissance = Doğum tarihi
   ├── Lieu de naissance = Doğum yeri
   ├── Nationalité = Uyruk
   └── NIR = Sosyal güvenlik no (1 85 12 75 108 123 45)
       Yapısı: [cinsiyet][yıl][ay][departman][sıra][kontrol]

2. ÉTAT CIVIL (Medeni Durum)
   ├── Célibataire = Bekar
   ├── Marié(e) = Evli
   ├── Divorcé(e) = Boşanmış
   ├── Pacsé(e) = PACS (medeni birliktelik)
   └── Veuf/Veuve = Dul

3. COORDONNÉES BANCAIRES (Banka Bilgileri)
   ├── IBAN = Uluslararası hesap no
   ├── BIC = Banka kodu
   └── Titulaire du compte = Hesap sahibi

4. CONTRAT (Sözleşme)
   ├── Type = CDI / CDD / Apprentissage / Stage
   ├── Date de début = Başlangıç tarihi
   ├── Date de fin = Bitiş tarihi (CDD için)
   ├── Période d'essai = Deneme süresi
   ├── Temps plein/partiel = Tam/yarı zamanlı
   ├── Durée hebdomadaire = Haftalık çalışma saati
   └── Qualification = Yetkinlik seviyesi
```

### 📋 Sözleşme Türleri

| Kısaltma | Fransızca | Türkçe | Açıklama |
|----------|-----------|--------|----------|
| CDI | Contrat à Durée Indéterminée | Belirsiz süreli | Süresiz iş sözleşmesi |
| CDD | Contrat à Durée Déterminée | Belirli süreli | Süreli sözleşme |
| CTT | Contrat de Travail Temporaire | Geçici iş | İşçi kiralama |
| CA | Contrat d'Apprentissage | Çıraklık | Stajyer sözleşmesi |
| CP | Contrat de Professionnalisation | Profesyonelleşme | Mesleki eğitim |

### 📋 Çalışan Kategorileri

| Fransızca | Türkçe | Bordro Etkisi |
|-----------|--------|---------------|
| Cadre | Yönetici/Beyaz yaka | Farklı emeklilik oranı, APEC |
| Non-cadre | İşçi/Çalışan | Standart oranlar |
| Cadre dirigeant | Üst düzey yönetici | Fazla mesai yok |
| Agent de maîtrise | Ara kademe yönetici | CC'ye göre değişir |
| Employé | Büro çalışanı | Standart |
| Ouvrier | İşçi | Standart |

---

## 📖 BÖLÜM 6: DEVAMSİZLİK YÖNETİMİ (GESTION DES ABSENCES)

### 📋 İzin Türleri

| Fransızca | Türkçe | Yasal Hak | Bordro Etkisi |
|-----------|--------|-----------|---------------|
| Congés payés (CP) | Yıllık ücretli izin | 25 iş günü/yıl | Maaştan kesilmez |
| RTT | Çalışma süresi azaltma | 35+ saat çalışana | CC'ye göre |
| Arrêt maladie | Hastalık raporu | CPAM öder | Maaştan kesilir |
| Accident du travail | İş kazası | %100 karşılanır | Özel hesaplama |
| Congé maternité | Doğum izni | 16 hafta | CPAM öder |
| Congé paternité | Babalık izni | 25 gün | CPAM öder |
| Congé sans solde | Ücretsiz izin | İşverenle anlaşma | Maaş kesilir |
| Absence injustifiée | Mazeretsiz devamsızlık | Yok | Maaş kesilir |
| Jour férié | Resmi tatil | 11 gün/yıl | Ücretli |

### 🇫🇷 Fransa Resmi Tatilleri (Jours Fériés)

| Tarih | Fransızca | Türkçe |
|-------|-----------|--------|
| 1 Ocak | Jour de l'An | Yılbaşı |
| Değişken | Lundi de Pâques | Paskalya Pazartesi |
| 1 Mayıs | Fête du Travail | İşçi Bayramı |
| 8 Mayıs | Victoire 1945 | Zafer Günü 1945 |
| Değişken | Ascension | Yükseliş Günü |
| Değişken | Lundi de Pentecôte | Pentekost Pazartesi |
| 14 Temmuz | Fête nationale | Ulusal Bayram |
| 15 Ağustos | Assomption | Meryem Ana |
| 1 Kasım | Toussaint | Azizler Günü |
| 11 Kasım | Armistice | Ateşkes Günü |
| 25 Aralık | Noël | Noel |

---

## 📖 BÖLÜM 7: DPAE (İŞE BAŞLAMA BEYANI)

```
DPAE = Déclaration Préalable à l'Embauche
     = İşe Alma Ön Beyanı

NE ZAMAN: İşe başlamadan ÖNCE (en erken 8 gün, en geç ilk gün)
NEREYE: URSSAF'a (net-entreprises.fr üzerinden)
KİM: İşveren veya expert-comptable

GEREKLİ BİLGİLER:
├── İşveren: SIRET, APE, adres
├── Çalışan: Ad, soyad, doğum, NIR
└── Sözleşme: Başlangıç tarihi/saati, tür, deneme süresi

YAPILMAZSA: Kaçak işçilik (travail dissimulé)
          → Ceza: 19,32€/çalışan + 58€/çalışan/ay gecikme
```
