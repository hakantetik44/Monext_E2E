# 🎯 fulll – QA Otomasyon Test Mühendisi Hazırlık Yol Haritası

---

## 📌 BÖLÜM 1: ŞİRKET ANALİZİ – fulll Nedir?

### 🏢 Genel Bakış

| Bilgi | Detay |
|-------|-------|
| **Şirket Adı** | fulll (evet, 3 tane "l" ile yazılır) |
| **Kuruluş** | 2002 (21+ yıllık deneyim) |
| **Merkez** | Lyon, Fransa (14 Rue Rhin et Danube, 69009) |
| **Çalışan Sayısı** | ~265 kişi |
| **Ciro** | ~22 milyon € |
| **Ortalama Yaş** | 37 |
| **Turnover** | %14 (düşük, iyi bir işaret!) |
| **Cinsiyet Dağılımı** | %40 / %60 |
| **Müşteri** | 1.300+ muhasebe ofisi, 200.000+ işletme |
| **Hedef** | 2030'a kadar 1 milyon işletmeye ulaşmak |

### 🎯 Ne Yapar fulll?

fulll, **expert-comptables (yeminli mali müşavirler)** için tasarlanmış bir **SaaS (Software as a Service)** platformudur. 

**Basitçe:** Muhasebecilerin hayatını kolaylaştıran, tam entegre bir bulut yazılımı.

### 📦 Ürün Gamı (Product Suite)

```
fulll Platform
├── 📊 fulll compta (Muhasebe) 
│   ├── Müşteri veri toplama (alış, satış, banka işlemleri)
│   ├── Ön muhasebe & otomatik kayıt
│   └── Aktivite yönetimi & raporlama
│
├── 💰 fulll paie (Bordro/Maaş) ⭐ SENİN SQUAD'IN!
│   ├── Bordro üretimi & yönetimi
│   ├── DSN (Déclaration Sociale Nominative) – Sosyal beyan
│   ├── Sosyal mevzuat takibi
│   ├── Değişken elemanların toplanması
│   └── RH Portalı (İK Portalı)
│
├── 🧾 fulll fact (Elektronik Fatura)
│   ├── e-Fatura gönderme/alma
│   ├── Yaşam döngüsü yönetimi
│   └── 2027 regülasyonuna uyum
│
├── 🛒 fulll achats (Satın Alma)
│   ├── Fatura dematerialization
│   └── Tedarikçi fatura entegrasyonu
│
├── 📱 Mobil Uygulama (React Native)
├── 🤖 IA (Yapay Zeka) Modülleri
├── 🔗 API & Bağlantılar (90+ partner)
├── 📁 Documents (GED / Elektronik Arşiv)
├── 💬 Portail Collaboratif (İşbirliği Portalı)
└── 📊 Dashboard & CRM
```

### ⚙️ Teknoloji Stack'i (ÇOK ÖNEMLİ!)

```
┌─────────────────────────────────────────────────┐
│                  FRONTEND                        │
│  ✅ React.js (%100)                              │
│  ✅ TypeScript (%100)                            │
│  ✅ React Native (Mobil - %100)                  │
│  ✅ Figma (Tasarım)                              │
├─────────────────────────────────────────────────┤
│                  BACKEND                         │
│  ✅ Node.js (%100)                               │
│  ✅ TypeScript (%100)                            │
│  ✅ GraphQL (%100) ⭐ ÖNEMLİ!                   │
│  ✅ PHP / Symfony (%50)                          │
│  ✅ PostgreSQL (%70)                             │
│  ✅ Redis (%100)                                 │
├─────────────────────────────────────────────────┤
│                  DEVOPS                          │
│  ✅ AWS (%100) – Tüm altyapı                    │
│  ✅ GitHub (%100)                                │
│  ✅ Terraform (%100) – IaC                      │
├─────────────────────────────────────────────────┤
│                  TEST / QA                       │
│  ✅ Cypress (%80) ⭐ ESAS ARAÇ                   │
│  ✅ CodeceptJS (%20)                             │
├─────────────────────────────────────────────────┤
│                  DATA                            │
│  ✅ Python (Data Science - %100)                 │
│  ✅ SSRS (%30)                                   │
├─────────────────────────────────────────────────┤
│            PROJE YÖNETİMİ                       │
│  ✅ Product Board (%100)                         │
│  ✅ PhpStorm / VS Code                           │
└─────────────────────────────────────────────────┘
```

> ⚠️ **KRİTİK BİLGİ:** Backend'de **GraphQL** kullanılıyor! Bu, REST API'den farklıdır ve API testi için çok önemli.

---

## 📌 BÖLÜM 2: İŞ İLANI DERİN ANALİZİ

### 🎯 Pozisyon: Testeur·se QA Automatisation

**Sen ne yapacaksın?**
- **Gamme Paie (Bordro Ürün Ailesi)** üzerinde test yapacaksın
- Bir **squad** içinde çalışacaksın:
  - 1 Product Manager
  - 1 Architect
  - 4 Developer (front & back)
  - **1 SEN (QA Tester)** ← burası

### 📋 Günlük Görevlerin

| Görev | Açıklama | Gerekli Beceri |
|-------|----------|----------------|
| **Test stratejisi hazırlama** | Hangi testler yazılacak, öncelik sırası | Test planlama, risk analizi |
| **E2E test otomasyonu** | Kullanıcı senaryolarını otomatize etme | Cypress + Cucumber/Gherkin |
| **API test otomasyonu** | Backend servisleri test etme | Cypress API testing, GraphQL |
| **Regresyon testleri** | Mevcut özelliklerin bozulmadığını doğrulama | CI/CD entegrasyonu |
| **Test data yönetimi** | Prod'u etkilemeden test verileri hazırlama | DB bilgisi, fixture/factory |
| **Bug analizi & raporlama** | Hataları analiz et, raporla, düzeltme kontrolü | Bug tracking (Jira vb.) |
| **Dokümantasyon** | Ürün dokümantasyonunu güncelleme | Teknik yazım |

### 🔍 Aranan Beceriler (Detaylı Analiz)

```
ZORUNLU:
├── ✅ 3+ yıl test deneyimi
├── ✅ Cypress → Günlük kullanım
├── ✅ Cucumber → BDD framework
├── ✅ Gherkin → Test senaryo dili
└── ✅ Test otomasyonu tutkusu

İLAN'DA YAZMAYANLAR AMA MUHTEMELEN SORULACAKLAR:
├── 🔶 GraphQL API Test (Backend'de GraphQL kullanıyorlar)
├── 🔶 CI/CD (GitHub Actions veya benzeri)
├── 🔶 TypeScript (Cypress testleri TS ile yazılıyor olabilir)
├── 🔶 PostgreSQL (Test data yönetimi için)
├── 🔶 Paie domain bilgisi (Bordro iş bilgisi)
└── 🔶 Agile/Scrum (Squad bazlı çalışma)
```

---

## 📌 BÖLÜM 3: ÖĞRENMELERİN GEREKEN KONULAR (ÖNCELİK SIRASI)

### 🔴 ÖNCELİK 1: API TESTİ TEMELLERİ (1-2 Hafta)

> API bilgim fazla yok diyorsun – buradan başla!

#### API Nedir? (Basitçe)

```
[Kullanıcı/Browser] ←→ [Frontend (React)] ←→ [API] ←→ [Backend/DB]

API = Uygulamanın "kapısı"
Frontend → API'ye istek gönderir (Request)
API → Cevap döner (Response)
```

#### REST vs GraphQL

```
REST API:
  GET    /api/employees        → Tüm çalışanları getir
  GET    /api/employees/123    → Tek çalışan getir
  POST   /api/employees        → Yeni çalışan ekle
  PUT    /api/employees/123    → Çalışan güncelle
  DELETE /api/employees/123    → Çalışan sil
  
  ⚠️ Her endpoint farklı bir URL
  ⚠️ Fazla/eksik veri sorunu (over/under fetching)

GraphQL (fulll BUNU KULLANIYOR!):
  POST /graphql              → TEK endpoint!
  
  Sorgu (Query):
  {
    employee(id: 123) {
      firstName
      lastName
      salary
      department {
        name
      }
    }
  }
  
  Mutasyon (Mutation):
  mutation {
    createEmployee(input: {
      firstName: "Hakan"
      lastName: "Tetik"
      salary: 40000
    }) {
      id
      firstName
    }
  }
  
  ✅ İstediğin veriyi tam olarak alırsın
  ✅ Tek endpoint
  ✅ Güçlü tip sistemi (schema)
```

#### Öğrenme Kaynakları – API Temelleri

1. **Postman Academy** (Ücretsiz): https://academy.postman.com/
   - "API Fundamentals Student Expert" sertifikası al
   - REST API'nin temellerini öğren

2. **GraphQL Öğren** (ÇOK ÖNEMLİ - fulll GraphQL kullanıyor!):
   - https://graphql.org/learn/ (resmi dokümantasyon)
   - https://www.howtographql.com/ (ücretsiz interaktif kurs)

3. **HTTP Temelleri:**
   - Status kodları: 200 (OK), 201 (Created), 400 (Bad Request), 401 (Unauthorized), 404 (Not Found), 500 (Server Error)
   - HTTP Metotları: GET, POST, PUT, PATCH, DELETE
   - Headers, Body, Query Parameters

---

### 🟠 ÖNCELİK 2: CYPRESS İLE API TESTİ (1-2 Hafta)

#### Cypress'te API Testi – Temeller

```javascript
// ============================================
// REST API Testi - Cypress ile
// ============================================

// GET Request
describe('Employee API Tests', () => {
  
  it('should get all employees', () => {
    cy.request('GET', '/api/employees').then((response) => {
      expect(response.status).to.eq(200)
      expect(response.body).to.be.an('array')
      expect(response.body.length).to.be.greaterThan(0)
    })
  })

  it('should create a new employee', () => {
    cy.request({
      method: 'POST',
      url: '/api/employees',
      body: {
        firstName: 'Hakan',
        lastName: 'Tetik',
        salary: 40000
      }
    }).then((response) => {
      expect(response.status).to.eq(201)
      expect(response.body).to.have.property('id')
      expect(response.body.firstName).to.eq('Hakan')
    })
  })
})

// ============================================
// GraphQL API Testi - Cypress ile ⭐
// ============================================

describe('GraphQL API Tests', () => {
  
  it('should query employee by ID', () => {
    const query = `
      query GetEmployee($id: ID!) {
        employee(id: $id) {
          id
          firstName
          lastName
          salary
        }
      }
    `
    
    cy.request({
      method: 'POST',
      url: '/graphql',
      body: {
        query: query,
        variables: { id: '123' }
      }
    }).then((response) => {
      expect(response.status).to.eq(200)
      expect(response.body.data.employee).to.have.property('firstName')
      expect(response.body.errors).to.be.undefined
    })
  })

  it('should create employee via mutation', () => {
    const mutation = `
      mutation CreateEmployee($input: EmployeeInput!) {
        createEmployee(input: $input) {
          id
          firstName
          lastName
        }
      }
    `
    
    cy.request({
      method: 'POST',
      url: '/graphql',
      body: {
        query: mutation,
        variables: {
          input: {
            firstName: 'Hakan',
            lastName: 'Tetik',
            salary: 40000
          }
        }
      }
    }).then((response) => {
      expect(response.status).to.eq(200)
      expect(response.body.data.createEmployee.firstName).to.eq('Hakan')
    })
  })
})
```

#### Öğrenme Kaynakları

1. **Cypress Resmi Dokümantasyon:**
   - `cy.request()`: https://docs.cypress.io/api/commands/request
   - `cy.intercept()`: https://docs.cypress.io/api/commands/intercept

2. **Cypress + GraphQL:**
   - Network interception ile GraphQL sorgularını yakalama
   - `cy.intercept('POST', '/graphql', ...)` kullanımı

---

### 🟡 ÖNCELİK 3: CUCUMBER + GHERKIN (Zaten Biliyorsun, Derinleştir)

#### Gherkin ile API Test Senaryoları

```gherkin
# cypress/e2e/features/payroll/create_payslip.feature

Feature: Bordro Oluşturma
  Expert-comptable olarak
  Müşterilerim için bordro oluşturmak istiyorum
  Böylece çalışanların maaşları doğru hesaplansın

  Background:
    Given kullanıcı "expert-comptable" olarak giriş yapmış
    And "ABC Şirketi" müşterisi seçilmiş

  Scenario: Basit bordro oluşturma
    Given çalışan "Jean Dupont" için Ocak 2025 dönemi seçilmiş
    When brüt maaş "3000" euro olarak girilir
    And bordro hesaplanır
    Then net maaş doğru hesaplanmalı
    And DSN beyanı oluşturulmalı
    And bordro durumu "Taslak" olarak görünmeli

  Scenario: API ile bordro oluşturma
    Given API erişim token'ı mevcut
    When aşağıdaki bilgilerle bordro oluşturma isteği gönderilir:
      | alan       | değer        |
      | employeeId | EMP-001      |
      | period     | 2025-01      |
      | grossPay   | 3000         |
    Then API yanıtı 201 status kodu dönmeli
    And yanıt body'sinde "payslipId" alanı bulunmalı

  Scenario Outline: Farklı maaş dilimleri için vergi hesaplama
    Given çalışanın brüt maaşı <brut_maas> euro
    When vergi hesaplaması yapılır
    Then vergi oranı <vergi_orani> olmalı
    And net maaş <net_maas> euro olmalı

    Examples:
      | brut_maas | vergi_orani | net_maas |
      | 2000      | %23         | 1540     |
      | 3000      | %25         | 2250     |
      | 5000      | %30         | 3500     |
```

#### Step Definitions (Cypress + Cucumber)

```javascript
// cypress/e2e/step_definitions/payroll_steps.js
import { Given, When, Then } from '@badeball/cypress-cucumber-preprocessor'

// ============ UI Steps ============

Given('kullanıcı {string} olarak giriş yapmış', (role) => {
  cy.login(role) // custom command
})

Given('{string} müşterisi seçilmiş', (company) => {
  cy.selectCompany(company)
})

When('brüt maaş {string} euro olarak girilir', (amount) => {
  cy.get('[data-testid="gross-salary-input"]').clear().type(amount)
})

When('bordro hesaplanır', () => {
  cy.get('[data-testid="calculate-payslip-btn"]').click()
})

Then('net maaş doğru hesaplanmalı', () => {
  cy.get('[data-testid="net-salary"]').should('not.be.empty')
  cy.get('[data-testid="net-salary"]').invoke('text').then((text) => {
    const netSalary = parseFloat(text.replace('€', '').trim())
    expect(netSalary).to.be.greaterThan(0)
  })
})

// ============ API Steps ============

Given('API erişim token\'ı mevcut', () => {
  cy.request({
    method: 'POST',
    url: '/api/auth/login',
    body: {
      email: Cypress.env('API_USER'),
      password: Cypress.env('API_PASS')
    }
  }).then((response) => {
    Cypress.env('authToken', response.body.token)
  })
})

When('aşağıdaki bilgilerle bordro oluşturma isteği gönderilir:', (dataTable) => {
  const data = dataTable.rowsHash()
  
  cy.request({
    method: 'POST',
    url: '/api/payslips',
    headers: {
      Authorization: `Bearer ${Cypress.env('authToken')}`
    },
    body: {
      employeeId: data.employeeId,
      period: data.period,
      grossPay: parseFloat(data.grossPay)
    }
  }).as('createPayslipResponse')
})

Then('API yanıtı {int} status kodu dönmeli', (statusCode) => {
  cy.get('@createPayslipResponse').its('status').should('eq', statusCode)
})

Then('yanıt body\'sinde {string} alanı bulunmalı', (field) => {
  cy.get('@createPayslipResponse').its('body').should('have.property', field)
})
```

---

### 🟢 ÖNCELİK 4: PROJE YAPISINI OLUŞTUR (Portfolyo için)

#### Önerilen Proje Yapısı

```
Api_cypress/
├── cypress/
│   ├── e2e/
│   │   ├── features/                    # Gherkin .feature dosyaları
│   │   │   ├── api/
│   │   │   │   ├── auth.feature         # Authentication API testleri
│   │   │   │   ├── employees.feature    # Çalışan CRUD API testleri
│   │   │   │   ├── payslips.feature     # Bordro API testleri
│   │   │   │   └── graphql.feature      # GraphQL sorgu testleri
│   │   │   └── ui/
│   │   │       ├── login.feature        # Login UI testleri
│   │   │       ├── payroll.feature      # Bordro UI testleri
│   │   │       └── dashboard.feature    # Dashboard UI testleri
│   │   └── step_definitions/
│   │       ├── api/
│   │       │   ├── auth_steps.js
│   │       │   ├── employee_steps.js
│   │       │   ├── payslip_steps.js
│   │       │   └── graphql_steps.js
│   │       └── ui/
│   │           ├── login_steps.js
│   │           ├── payroll_steps.js
│   │           └── dashboard_steps.js
│   ├── fixtures/                         # Test verileri
│   │   ├── employees.json
│   │   ├── payslips.json
│   │   └── graphql/
│   │       ├── queries.json
│   │       └── mutations.json
│   ├── support/
│   │   ├── commands.js                   # Custom Cypress komutları
│   │   ├── e2e.js                        # Global hooks
│   │   └── pages/                        # Page Object Model
│   │       ├── BasePage.js
│   │       ├── LoginPage.js
│   │       ├── PayrollPage.js
│   │       └── DashboardPage.js
│   └── plugins/
│       └── index.js
├── cypress.config.js                     # Cypress konfigürasyonu
├── package.json
├── .gitignore
├── README.md                             # Proje açıklaması
└── reports/                              # Allure raporları
    └── allure-results/
```

---

## 📌 BÖLÜM 4: HAFTALIK ÖĞRENME PLANI

### 📅 Hafta 1: API ve HTTP Temelleri

| Gün | Konu | Kaynak | Hedef |
|-----|------|--------|-------|
| Pzt | HTTP nedir? Request/Response döngüsü | MDN Web Docs | HTTP metotlarını (GET, POST, PUT, DELETE) bil |
| Sal | Status kodları, Headers, Body | Postman Learning Center | 2xx, 4xx, 5xx arasındaki farkı anla |
| Çar | Postman ile ilk API çağrıları | Postman Academy | Ücretsiz bir API'ye istek gönder (JSONPlaceholder) |
| Per | REST API yapısı | restfulapi.net | CRUD operasyonlarını anla |
| Cum | **GraphQL Temelleri** | howtographql.com | Query, Mutation, Schema kavramlarını öğren |
| Cts | GraphQL vs REST karşılaştırması | graphql.org/learn | Neden GraphQL? Avantajları/dezavantajları |
| Paz | Pratik: GraphQL Playground | Herhangi bir GraphQL API | Sorgu yazma pratiği yap |

### 📅 Hafta 2: Cypress API Testing

| Gün | Konu | Kaynak | Hedef |
|-----|------|--------|-------|
| Pzt | `cy.request()` temelleri | Cypress docs | İlk API testini yaz |
| Sal | Response doğrulama (assertions) | Cypress docs | Status, body, headers kontrol et |
| Çar | `cy.intercept()` ile network stubbing | Cypress docs | Frontend-backend iletişimini yakala |
| Per | Cypress ile GraphQL testi | Blog yazıları | GraphQL sorguları test et |
| Cum | Auth token yönetimi | Cypress best practices | Login → Token → Authenticated requests |
| Cts | Test data yönetimi (fixtures) | Cypress docs | `cy.fixture()` ile test verileri kullan |
| Paz | **Mini Proje:** Tam bir API test suite yaz | - | JSONPlaceholder üzerinde CRUD testleri |

### 📅 Hafta 3: Cucumber + Gherkin Derinleştirme

| Gün | Konu | Kaynak | Hedef |
|-----|------|--------|-------|
| Pzt | BDD nedir? Neden Cucumber? | cucumber.io | BDD felsefesini anla |
| Sal | Gherkin syntax derinleştirme | Cucumber docs | Background, Scenario Outline, Data Tables |
| Çar | Step definitions best practices | - | Reusable, parametreli step'ler yaz |
| Per | Cucumber + Cypress entegrasyonu | cypress-cucumber-preprocessor | Projeyi kur |
| Cum | API testlerini Gherkin ile yaz | - | Feature dosyaları oluştur |
| Cts | Tags, hooks, reporting | - | @smoke, @regression, Before/After hooks |
| Paz | **Mini Proje:** API + UI testleri ile BDD suite | - | Tam bir BDD projesi oluştur |

### 📅 Hafta 4: Domain Bilgisi + Proje Tamamlama

| Gün | Konu | Kaynak | Hedef |
|-----|------|--------|-------|
| Pzt | Bordro (Paie) domain bilgisi | Fransız mevzuatı | DSN, brüt/net, sosyal kesintiler |
| Sal | fulll paie ürününü tanı | fulll.fr | Ürün özelliklerini anla |
| Çar | Test stratejisi yazımı | ISTQB materyalleri | Test planı şablonu oluştur |
| Per | CI/CD entegrasyonu | GitHub Actions | Otomatik test çalıştırma |
| Cum | Allure Report entegrasyonu | allure-framework | Güzel raporlar oluştur |
| Cts | Projeyi tamamla, README yaz | - | Profesyonel README ve dökümantasyon |
| Paz | **Mock mülakata hazırlan** | - | Olası soruları cevapla |

---

## 📌 BÖLÜM 5: MÜLAKATta SORULACAK OLASI SORULAR

### 🔵 Teknik Sorular

1. **Cypress'te API testi nasıl yaparsınız?**
   - `cy.request()` ile direkt API çağrısı
   - `cy.intercept()` ile network yakalama
   - Response validation (status, body, headers)

2. **GraphQL testi REST'ten nasıl farklıdır?**
   - Tek endpoint (`/graphql`), POST metodu
   - Query ve Mutation ayrımı
   - Response'da `data` ve `errors` alanları

3. **BDD yaklaşımının avantajları nelerdir?**
   - İş birimi ile ortak dil (Gherkin)
   - Living documentation
   - Test senaryoları herkes tarafından okunabilir

4. **Test data yönetimini nasıl yaparsınız?**
   - Fixtures
   - Factory pattern
   - API ile data oluşturma/temizleme (beforeEach/afterEach)
   - Production verilerine dokunmadan izole test ortamı

5. **Regresyon test stratejiniz nedir?**
   - Smoke tests (kritik yollar)
   - Full regression (her sprint sonu)
   - CI/CD pipeline'da otomatik çalıştırma
   - Tag-based execution (@smoke, @regression, @paie)

### 🟢 Domain Soruları (Paie/Bordro)

1. **DSN nedir?**
   - Déclaration Sociale Nominative: İşverenin sosyal kurumlar (URSSAF, etc.) ile paylaştığı zorunlu beyan

2. **Bordroyu etkileyen değişken elemanlar nelerdir?**
   - Mesai saatleri, izin günleri, primler, ikramiyeler, hastalık günleri

3. **Bu domain'de hangi test senaryoları kritiktir?**
   - Maaş hesaplama doğruluğu
   - Vergi oranları
   - DSN oluşturma ve gönderme
   - Yeni çalışan ekleme/çıkarma
   - Dönem kapatma

### 🟡 Davranışsal Sorular

1. **Bir bug bulduğunuzda nasıl raporlarsınız?**
   - Adımlar (steps to reproduce)
   - Beklenen vs gerçekleşen sonuç
   - Ekran görüntüsü/video
   - Ortam bilgisi (browser, OS)
   - Öncelik ve ciddiyet seviyesi

2. **Squad içinde nasıl çalışırsınız?**
   - Daily standup'lara katılım
   - Sprint planning'de test perspektifi sunma
   - Developer'larla erken iletişim
   - PM ile acceptance criteria netleştirme

---

## 📌 BÖLÜM 6: HEMEN BAŞLAMAK İÇİN YAPMAN GEREKENLER

### ✅ Bugün Yap
1. [ ] Bu dosyayı iyice oku ve anla
2. [ ] Postman'i indir (henüz yoksa)
3. [ ] JSONPlaceholder API'sine (https://jsonplaceholder.typicode.com/) bir GET isteği gönder
4. [ ] GraphQL öğrenmeye başla (https://www.howtographql.com/)

### ✅ Bu Hafta Yap
5. [ ] HTTP temellerini öğren (Status kodları, metotlar, headers)
6. [ ] `cy.request()` ile ilk Cypress API testini yaz
7. [ ] GraphQL sorgu yapısını anla (Query, Mutation, Variables)
8. [ ] Proje yapısını oluştur (bu dizinde)

### ✅ Bu Ay Yap
9. [ ] Tam bir Cypress + Cucumber API test projesi oluştur
10. [ ] GraphQL API testleri ekle
11. [ ] CI/CD pipeline kur
12. [ ] Allure Report entegre et
13. [ ] README ve dokümantasyonu tamamla
14. [ ] Mock mülakat yap (benimle!)

---

## 📌 BÖLÜM 7: SENİN ÜZERİNE DÜŞEN "NASIL OLMAMASI GEREKENLERi"

### ❌ Yapmamanız Gerekenler

| HATA | DOĞRUSU |
|------|---------|
| ❌ Sadece UI testi bilmek | ✅ API + UI + E2E hepsini kapsa |
| ❌ Hard-coded test verileri | ✅ Dinamik, fixture-based veriler |
| ❌ `cy.wait(5000)` kullanmak | ✅ `cy.intercept()` ile intelligent waits |
| ❌ Tek uzun test senaryosu | ✅ Küçük, bağımsız, odaklı testler |
| ❌ Hata olmadan geçen testler yazmak | ✅ Hem pozitif hem negatif senaryolar |
| ❌ Page Object olmadan test | ✅ POM pattern kullan |
| ❌ "Çalışıyor" demek yeterli | ✅ Neden çalıştığını açıklayabilmek |
| ❌ Domain'i bilmemek | ✅ Bordro süreçlerini anlamak |
| ❌ Manuel düşünmek | ✅ Otomasyon mindset'i |

### ✅ Mülakatta Öne Çıkaran Şeyler

1. **GraphQL bilgisi** → fulll GraphQL kullanıyor, bunu bilmen avantaj!
2. **Test stratejisi anlatımı** → Sadece kod yazma, strateji de anlat
3. **Domain bilgisi** → Bordro/paie süreçlerine ilgin olduğunu göster
4. **CI/CD bilgisi** → Testlerin pipeline'da nasıl çalıştığını bil
5. **Problem çözme yaklaşımı** → Bug found → analiz → raporlama → doğrulama döngüsü

---

## 🚀 SONUÇ

**Sen zaten Cypress + Cucumber biliyorsun.** Eksik olan kısımlar:

1. **API Testi Temelleri** → 1-2 haftada öğrenilir
2. **GraphQL** → fulll'un kullandığı teknoloji, öğrenmek avantaj
3. **Bordro Domain Bilgisi** → İş süreçlerini anlamak
4. **Test Stratejisi** → Sadece test yazmak değil, strateji oluşturmak

**Bir sonraki adım olarak bu projede (Api_cypress) gerçek bir demo framework oluşturmaya ne dersin?**
