# 🧪 FULLL PAİE – MANUEL TEST SENARYOLARI & PRATİK FRANSIZCA

---

## 📖 BÖLÜM 8: MANUEL TEST SENARYOLARI (Detaylı)

### 🧪 TEST ALANI 1: Çalışan Oluşturma (Création du salarié)

#### TC-001: Yeni CDI çalışan oluşturma
```
📝 Scénario: Créer un nouveau salarié en CDI
   (Senaryo: Yeni CDI çalışan oluşturma)

Pré-conditions (Ön koşullar):
• Dossier client actif (Aktif müşteri dosyası)
• Convention collective sélectionnée (CC seçilmiş)

Étapes (Adımlar):
1. Cliquer sur "+ Ajouter un individu" 
   (+ Birey ekle'ye tıkla)
2. Remplir l'onglet "Identité" 
   (Kimlik sekmesini doldur)
   → Nom: DUPONT / Prénom: Marie
   → NIR: 2 85 12 75 108 123 45
   → Date de naissance: 15/12/1985
3. Remplir l'onglet "État civil"
   (Medeni durum sekmesini doldur)
   → Situation: Mariée (Evli)
4. Remplir "Coordonnées bancaires"
   (Banka bilgilerini doldur)
   → IBAN: FR76 1234 5678 9012 3456 7890 123
5. Remplir "Contrat"
   (Sözleşme bilgilerini doldur)
   → Type: CDI
   → Date début: 01/03/2025
   → Temps plein: 35h/semaine
   → Qualification: Employée
6. Valider la création
   (Oluşturmayı onayla)

Résultat attendu (Beklenen sonuç):
✅ Salarié apparaît dans la liste des fiches
   (Çalışan kartlar listesinde görünür)
✅ Badge avec initiales "MD" affiché
   (Baş harflerle "MD" rozeti gösterilir)
✅ Statut: Actif
   (Durum: Aktif)
```

#### TC-002: NIR formatı kontrolü
```
📝 Scénario: Vérifier la validation du NIR
   (NIR doğrulamasını kontrol et)

Étapes:
1. Saisir un NIR invalide: "123"
   (Geçersiz NIR gir)
2. Essayer de valider
   (Onaylamayı dene)

Résultat attendu:
✅ Message d'erreur: "Le NIR saisi n'est pas valide"
   (Hata mesajı: "Girilen NIR geçerli değil")
❌ La création ne doit PAS être possible
   (Oluşturma mümkün OLMAMALI)
```

#### TC-003: IBAN doğrulama
```
📝 Scénario: Vérifier la validation de l'IBAN
   (IBAN doğrulamasını kontrol et)

Cas 1: IBAN valide français
  → FR76 3000 6000 0112 3456 7890 189 ✅

Cas 2: IBAN invalide (trop court)
  → FR76 1234 ❌

Cas 3: IBAN étranger valide
  → DE89 3704 0044 0532 0130 00 ✅

Résultat attendu:
✅ Seuls les IBAN valides sont acceptés
   (Sadece geçerli IBAN'lar kabul edilir)
```

---

### 🧪 TEST ALANI 2: İzin Yönetimi (Gestion des absences)

#### TC-010: İzin talebi oluşturma
```
📝 Scénario: Créer une demande de congé payé
   (Ücretli izin talebi oluşturma)

Étapes:
1. Ouvrir le calendrier du salarié
   (Çalışanın takvimini aç)
2. Cliquer sur les dates 10/03 au 14/03/2025
   (10-14 Mart tarihlerine tıkla)
3. Sélectionner le type: "Congé payé"
   (Tür seç: "Ücretli izin")
4. Valider la demande
   (Talebi onayla)

Résultat attendu:
✅ Compteur CP diminué de 5 jours
   (CP sayacı 5 gün azaldı)
✅ Statut: "En attente de validation"
   (Durum: "Onay bekliyor")
✅ Dates visibles sur le calendrier équipe
   (Tarihler ekip takviminde görünür)
```

#### TC-011: Çakışan izin kontrolü
```
📝 Scénario: Tenter de poser un congé sur des dates déjà prises
   (Zaten alınmış tarihlere izin koymayı deneme)

Pré-condition: CP du 10/03 au 14/03 déjà validé

Étapes:
1. Essayer de poser un CP du 12/03 au 16/03
   (12-16 Mart'a CP koymayı dene)

Résultat attendu:
✅ Message d'alerte: "Chevauchement avec une absence existante"
   (Uyarı: "Mevcut bir devamsızlıkla çakışma")
```

#### TC-012: Hastalık raporu girişi
```
📝 Scénario: Saisir un arrêt maladie
   (Hastalık raporu girişi)

Étapes:
1. Sélectionner type: "Arrêt maladie"
   (Tür: "Hastalık raporu")
2. Dates: 01/03 au 07/03/2025
3. Joindre le justificatif (scan/photo)
   (Belge ekle)

Résultat attendu:
✅ Bulletin de paie: Retenue absence maladie visible
   (Bordroda: Hastalık devamsızlık kesintisi görünür)
✅ DSN événementielle déclenchée
   (Olay DSN'i tetiklendi)
✅ Indemnités Journalières calculées (IJSS)
   (Günlük tazminat hesaplandı)
```

---

### 🧪 TEST ALANI 3: Bordro Üretimi (Production de la paie)

#### TC-020: Normal bordro üretimi
```
📝 Scénario: Produire un bulletin de paie standard
   (Standart bordro üretimi)

Pré-conditions:
• Salarié actif en CDI, temps plein
  (Aktif CDI çalışan, tam zamanlı)
• Convention collective IDCC 0787
• Salaire de base: 2.500€ brut
  (Temel maaş: 2.500€ brüt)

Étapes:
1. Accéder à "Génération des bulletins"
   (Bordro üretimine eriş)
2. Sélectionner la période: Mars 2025
   (Dönem seç: Mart 2025)
3. Lancer le calcul
   (Hesaplamayı başlat)
4. Vérifier chaque rubrique du bulletin
   (Bordronun her kalemini kontrol et)

Vérifications (Kontroller):
✅ Salaire de base = 2.500,00€
✅ Total brut = 2.500,00€ (pas de primes ce mois)
✅ Cotisations salariales calculées correctement:
   → Vieillesse plafonnée: 2.500 × 6,90% = 172,50€
   → Vieillesse déplafonnée: 2.500 × 0,40% = 10,00€
   → CSG déductible: (2.500 × 98,25%) × 6,80% = 167,03€
   → CSG non déductible: (2.500 × 98,25%) × 2,40% = 58,95€
   → CRDS: (2.500 × 98,25%) × 0,50% = 12,28€
✅ Net à payer avant impôt affiché
✅ PAS appliqué au bon taux
✅ Net à payer final correct
```

#### TC-021: CC minimum maaş kontrolü
```
📝 Scénario: Vérifier le respect du salaire minimum conventionnel
   (CC minimum maaş uyumunu kontrol et)

Situation: 
• IDCC 0787 minimum pour Employé: 1.900€
  (IDCC 0787 çalışan için minimum: 1.900€)
• Saisir un salaire de base: 1.750€
  (1.750€ temel maaş gir)

Résultat attendu:
✅ Alerte: "Salaire inférieur au minimum conventionnel"
   (Uyarı: "Maaş sözleşme minimumunun altında")
   VEYA
✅ Système applique automatiquement le minimum
   (Sistem otomatik olarak minimumu uygular)
```

#### TC-022: Fazla mesai hesaplama
```
📝 Scénario: Vérifier le calcul des heures supplémentaires
   (Fazla mesai hesaplamasını kontrol et)

Données:
• Salaire horaire: 16,50€/h (Saatlik ücret)
• Heures sup 25%: 4h
• Heures sup 50%: 2h

Calcul attendu (Beklenen hesaplama):
• 4h × 16,50€ × 1,25 = 82,50€
• 2h × 16,50€ × 1,50 = 49,50€
• Total heures sup: 132,00€

✅ Vérifier que ces montants apparaissent sur le bulletin
   (Bu tutarların bordroda göründüğünü doğrula)
```

---

### 🧪 TEST ALANI 4: DSN Yönetimi

#### TC-030: Aylık DSN oluşturma
```
📝 Scénario: Générer la DSN mensuelle
   (Aylık DSN oluşturma)

Pré-condition: Tous les bulletins du mois validés
(Ön koşul: Ayın tüm bordroları onaylanmış)

Étapes:
1. Accéder à "Déclaratif de paie"
   (Bordro beyanına eriş)
2. Vérifier le tableau "État d'avancement"
   (İlerleme durumu tablosunu kontrol et)
3. Tous les indicateurs doivent être verts
   (Tüm göstergeler yeşil olmalı)
4. Générer la DSN
   (DSN'i oluştur)
5. Vérifier le contenu de la DSN
   (DSN içeriğini kontrol et)

Résultat attendu:
✅ Tous les salariés présents dans la DSN
✅ Rémunérations correctes
✅ Cotisations totales correspondent aux bulletins
✅ Statut: "Envoyée" ou "Acceptée"
```

---

### 🧪 TEST ALANI 5: Portail RH (İK Portalı)

#### TC-040: EVP girişi (Portail'den)
```
📝 Scénario: Saisir des éléments variables via le Portail RH
   (İK Portalı üzerinden değişken eleman girişi)

Rôle: Entreprise (Rol: Şirket/İşveren)

Étapes:
1. Se connecter au Portail RH
   (İK Portalına giriş yap)
2. Accéder à "Grille mensuelle EVP"
   (Aylık EVP giridinee eriş)
3. Pour le salarié DUPONT Marie:
   → Prime exceptionnelle: 500€ (Özel prim)
   → Tickets restaurant: 10 jours (Yemek kartı)
   → Heures sup: 4h (Fazla mesai)
4. Valider les saisies
   (Girişleri onayla)

Résultat attendu:
✅ Statut passe à "Validé par l'entreprise"
   (Durum "Şirket tarafından onaylandı" olur)
✅ Gestionnaire de paie voit les EVP
   (Bordro yöneticisi EVP'leri görür)
✅ Les éléments sont repris sur le bulletin
   (Elemanlar bordroya aktarılır)
```

---

## 📖 BÖLÜM 9: MÜLAKAT İÇİN PRATİK FRANSIZCA CÜMLELER

### 🗣️ Bug Raporlama Cümleleri

```
"J'ai trouvé une anomalie sur le bulletin de paie."
→ Bordroda bir hata buldum.

"Le calcul de la cotisation vieillesse est incorrect."
→ Emeklilik kesintisi hesaplaması yanlış.

"Le montant net à payer ne correspond pas au calcul attendu."
→ Ele geçen net tutar beklenen hesaplamayla uyuşmuyor.

"La convention collective n'est pas correctement appliquée."
→ Toplu iş sözleşmesi doğru uygulanmıyor.

"Il y a un écart entre le bulletin et la DSN."
→ Bordro ile DSN arasında tutarsızlık var.

"Le SMIC n'est pas respecté pour ce salarié."
→ Bu çalışan için asgari ücret kuralına uyulmuyor.

"Les heures supplémentaires ne sont pas majorées au bon taux."
→ Fazla mesai zammı doğru oranda yapılmamış.

"L'absence maladie n'impacte pas correctement le brut."
→ Hastalık devamsızlığı brüt maaşı doğru etkilemiyor.

"La DSN événementielle n'a pas été générée après l'arrêt maladie."
→ Hastalık raporundan sonra olay DSN'i oluşturulmamış.
```

### 🗣️ Test Toplantısı Cümleleri

```
"Je vais tester le paramétrage de la convention collective IDCC 0787."
→ IDCC 0787 sözleşme parametrelerini test edeceğim.

"Les tests de régression sont terminés, aucune anomalie détectée."
→ Regresyon testleri tamamlandı, hata bulunmadı.

"J'ai besoin d'un jeu de données pour tester le cas CDD."
→ CDD durumunu test etmek için test verisi gerekiyor.

"Le scénario Cucumber est prêt, je lance l'exécution."
→ Cucumber senaryosu hazır, çalıştırıyorum.

"Le bulletin complémentaire a été correctement généré."
→ Ek bordro doğru şekilde oluşturuldu.

"Il faut vérifier la rétroactivité de cette modification."
→ Bu değişikliğin geriye dönük etkisini kontrol etmeliyiz.
```

### 🗣️ Ekip İletişimi Cümleleri

```
"Est-ce que ce cas est prévu dans les spécifications ?"
→ Bu durum şartnamede öngörülmüş mü?

"Je peux reproduire le bug en suivant ces étapes..."
→ Bu adımları izleyerek hatayı tekrarlayabiliyorum...

"Le correctif a été validé, le ticket peut être fermé."
→ Düzeltme doğrulandı, bilet kapatılabilir.

"Il manque un critère d'acceptation pour cette user story."
→ Bu user story için bir kabul kriteri eksik.

"J'ai mis à jour la documentation de test."
→ Test dokümantasyonunu güncelledim.
```

---

## 📖 BÖLÜM 10: HESAPLAMA ÖRNEKLERİ (Pratik Alıştırmalar)

### 📊 Örnek 1: Basit bordro hesaplama

```
Ayarlar:
• Salarié: Pierre MARTIN
• CDI, Non-cadre, Temps plein (35h)
• Convention: IDCC 0573 (Commerces de gros)
• Salaire de base: 2.200€ brut

ADIM 1: Brüt maaş
  Salaire de base:       2.200,00€
  Heures supplémentaires:    0,00€
  Primes:                    0,00€
  ─────────────────────────────────
  TOTAL BRUT:            2.200,00€

ADIM 2: Çalışan kesintileri (Part salariale)
  Vieillesse plafonnée:  2.200 × 6,90% = 151,80€
  Vieillesse déplafonnée: 2.200 × 0,40% = 8,80€
  AGIRC-ARRCO T1:        2.200 × 3,15% = 69,30€
  CSG déductible:        (2.200 × 98,25%) × 6,80% = 147,00€
  CSG non déductible:    (2.200 × 98,25%) × 2,40% = 51,88€
  CRDS:                  (2.200 × 98,25%) × 0,50% = 10,81€
  ─────────────────────────────────
  TOTAL COTISATIONS:     ~489,59€ (yaklaşık %22,3)

ADIM 3: Net hesaplama
  Brut:                  2.200,00€
  - Cotisations:          -489,59€
  ─────────────────────────────────
  NET AVANT IMPÔT:       ~1.710,41€

ADIM 4: Vergi (PAS)
  Taux PAS (örnek):      7,5%
  Net imposable × 7,5%:  ~128,28€
  ─────────────────────────────────
  NET À PAYER:           ~1.582,13€ (ele geçen)
```

### 📊 Örnek 2: Fazla mesaili bordro

```
Ayarlar:
• Même salarié que l'exemple 1
  (Aynı çalışan)
• + 8 heures supplémentaires ce mois
  (+ bu ay 8 saat fazla mesai)
• Taux horaire: 2.200 ÷ 151,67 = 14,51€/h

Hesaplama:
  İlk 8 saat fazla mesai: 8h × 14,51€ × 1,25 = 145,10€

TOTAL BRUT: 2.200 + 145,10 = 2.345,10€

⚠️ NOT: Fazla mesai HS exonérée (vergiden muaf)
   → CSG/CRDS farklı hesaplanır
   → Net'e etkisi düz kesintiden farklıdır
```

---

## 📖 BÖLÜM 11: ARAYÜZ TERİMLERİ SÖZLÜĞÜ

### 🖥️ fulll Paie Uygulama Arayüzünde Göreceğin Terimler

| Ekranda Gördüğün (FR) | Türkçe Karşılığı | Nerede? |
|------------------------|-------------------|---------|
| Ajouter un individu | Birey ekle | Çalışan listesi |
| Fiches salariés | Çalışan kartları | Ana ekran |
| Grille mensuelle EVP | Aylık EVP ızgarası | Portail RH |
| Validation des variables | Değişken onayı | Bordro süreci |
| Génération des bulletins | Bordro üretimi | Bordro süreci |
| Validation du bulletin | Bordro onayı | Onay akışı |
| Déclaratif | Beyan/DSN | DSN yönetimi |
| État d'avancement | İlerleme durumu | Dashboard |
| Totalement réalisé | Tamamen tamamlandı | Durum göstergesi |
| Partiellement réalisé | Kısmen tamamlandı | Durum göstergesi |
| Non réalisé | Tamamlanmadı | Durum göstergesi |
| Coffre-fort numérique | Dijital kasa | Belge yönetimi |
| Tâches | Görevler | Görev listesi |
| En attente | Beklemede | Durum |
| Accepté | Kabul edildi | Durum |
| Refusé | Reddedildi | Durum |
| Envoyé | Gönderildi | DSN durumu |
| Erreur | Hata | DSN durumu |
| Période | Dönem | Tarih filtresi |
| Exercice | Mali yıl/dönem | Hesap dönemi |
| Dossier | Dosya/Müşteri | Müşteri yönetimi |
| Rubrique | Kalem/Satır | Bordro satırları |
| Assiette | Matrah | Kesinti hesaplaması |
| Taux | Oran | Kesinti oranı |
| Montant | Tutar | Hesaplanan miktar |
| Brut | Brüt | Maaş |
| Net | Net | Maaş |
| Plafond | Tavan/Sınır | Üst limit |
| Déplafonnée | Tavansız | Sınırsız hesaplama |
| Rétroactivité | Geriye dönük işlem | Düzeltme |
| Régularisation | Düzeltme/Ayarlama | Fark hesaplama |
| Solde | Bakiye/Kalan | İzin bakiyesi |
| Compteur | Sayaç | İzin sayacı |
| Fiche de paie | Bordro | Maaş belgesi |
| Bulletin complémentaire | Ek bordro | Düzeltme bordrosu |
| Veille sociale | Sosyal mevzuat takibi | Yasal güncelleme |
| Modélisation | Modelleme | CC parametreleri |

---

## 📖 BÖLÜM 12: GÜNLÜK ÇALIŞMA AKIŞI

```
Tipik bir QA gününde ne yaparsın:

09:00 - Daily Stand-up (Günlük toplantı)
  → "Hier j'ai testé..." (Dün ... test ettim)
  → "Aujourd'hui je vais..." (Bugün ... yapacağım)
  → "Je suis bloqué par..." (... tarafından engelleniyorum)

09:30 - Sprint backlog'u kontrol et
  → Jira/ClickUp'ta atanmış görevleri kontrol
  → Yeni özellikler (nouvelles fonctionnalités) var mı?
  → Bug fix'ler geldi mi? Re-test gerekli mi?

10:00 - Manuel test çalıştır
  → Yeni paramétrage métier testi
  → CC kurallarının doğruluğunu kontrol
  → Bordro hesaplama doğrulaması

12:00 - Öğle arası (Pause déjeuner)

13:30 - Otomasyon testleri
  → Cypress E2E testlerini çalıştır
  → API (GraphQL) testlerini çalıştır
  → Başarısız testleri analiz et

15:00 - Bug raporlama
  → Bulunan hataları raporla
  → Ekran görüntüsü + adımlar ekle
  → Öncelik belirle (critique/majeur/mineur)

16:00 - Düzeltme doğrulama
  → Developer'ın fix'lerini re-test et
  → Regresyon testi çalıştır

17:00 - Dokümantasyon
  → Test dokümantasyonunu güncelle
  → Yarın için plan yap
```

---

## ✅ ÖZET: BU REHBERİ BİTİRDİKTEN SONRA BİLDİĞİN ŞEYLER

```
✅ Fransız bordro pusulasının 7 bölgesini okuyabilirsin
✅ Brüt → Net hesaplamayı yapabilirsin
✅ DSN'in ne olduğunu ve türlerini bilirsin
✅ Convention Collective'in bordro etkisini anlarsın
✅ Çalışan oluşturma adımlarını bilirsin
✅ İzin türlerini ve bordro etkilerini anlarsın
✅ DPAE sürecini bilirsin
✅ fulll arayüzündeki Fransızca terimleri anlarsın
✅ Bug raporlarken Fransızca cümle kurabilirsin
✅ Toplantılarda basit Fransızca iletişim kurabilirsin
✅ Manuel test senaryoları yazabilirsin
✅ Bordro hesaplama doğrulaması yapabilirsin
```
