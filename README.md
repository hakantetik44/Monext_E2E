# 🧪 Monext E2E Test Automation Framework

<div align="center">

![Robot Framework](https://img.shields.io/badge/Robot_Framework-7.0-brightgreen)
![Python](https://img.shields.io/badge/Python-3.11-blue)
![Selenium](https://img.shields.io/badge/Selenium-4.x-green)
![Allure](https://img.shields.io/badge/Allure-2.13-orange)
![License](https://img.shields.io/badge/License-MIT-yellow)

**Framework de test automatisé pour le site Monext**

[Installation](#-installation) • [Utilisation](#-utilisation) • [Structure](#-structure-du-projet) • [Rapports](#-allure-report)

</div>

---

## 📋 Description

Ce framework de test automatisé est conçu pour tester le site web [Monext](https://www.monext.com/). Il utilise le **Page Object Model (POM)** pour une meilleure maintenabilité et réutilisabilité du code.

### ✨ Fonctionnalités

- 🏗️ **Page Object Model** - Architecture propre et maintenable
- 🎬 **Enregistrement vidéo** - Capture vidéo des tests pour débogage
- 📊 **Allure Report** - Rapports détaillés et interactifs
- 📸 **Captures d'écran** - Screenshots automatiques
- 🇫🇷 **Documentation en français** - Code et commentaires en français
- 🔧 **Configurable** - Paramètres personnalisables

---

## 🛠️ Installation

### Prérequis

- Python 3.11+
- Google Chrome (dernière version)
- ChromeDriver
- Allure Commandline

### Installation des dépendances

```bash
# Cloner le projet
cd /Users/macbook/Desktop/Monext_E2E

# Créer un environnement virtuel
python3 -m venv venv
source venv/bin/activate

# Installer les dépendances
pip install -r requirements.txt

# Installer ChromeDriver
brew install chromedriver

# Installer Allure
brew install allure
```

---

## 🚀 Utilisation

### Exécution rapide

```bash
# Rendre le script exécutable
chmod +x run_tests.sh

# Exécuter tous les tests
./run_tests.sh --all

# Tests de fumée uniquement
./run_tests.sh --smoke

# Tests avec génération de rapport
./run_tests.sh --all --report
```

### Options du script

| Option | Description |
|--------|-------------|
| `-a, --all` | Exécuter tous les tests |
| `-s, --smoke` | Tests de fumée uniquement |
| `-t, --test FILE` | Exécuter un fichier spécifique |
| `-i, --include TAG` | Inclure par tag |
| `-e, --exclude TAG` | Exclure par tag |
| `-r, --report` | Générer le rapport Allure |
| `-c, --clean` | Nettoyer les anciens rapports |

### Exécution manuelle avec Robot Framework

```bash
# Tous les tests
robot --listener allure_robotframework --outputdir reports tests/

# Tests par tag
robot --include smoke --outputdir reports tests/

# Test spécifique
robot --outputdir reports tests/test_page_accueil.robot
```

---

## 📁 Structure du projet

```
Monext_E2E/
├── 📂 config/                    # Configuration
│   ├── __init__.py
│   └── settings.py               # Paramètres globaux
│
├── 📂 locators/                  # Sélecteurs d'éléments
│   ├── __init__.py
│   ├── base_locators.py          # Locators communs
│   ├── home_locators.py          # Locators page d'accueil
│   ├── contact_locators.py       # Locators page contact
│   └── products_locators.py      # Locators pages produits
│
├── 📂 pages/                     # Page Objects
│   ├── __init__.py
│   ├── base_page.py              # Classe de base (fonctions communes)
│   ├── home_page.py              # Page d'accueil
│   ├── contact_page.py           # Page de contact
│   └── products_page.py          # Pages produits
│
├── 📂 tests/                     # Fichiers de tests Robot
│   ├── test_page_accueil.robot   # Tests page d'accueil
│   ├── test_page_contact.robot   # Tests page contact
│   ├── test_pages_produits.robot # Tests pages produits
│   └── test_smoke.robot          # Tests de fumée
│
├── 📂 resources/                 # Ressources partagées
│   └── common.resource           # Keywords et variables communes
│
├── 📂 utils/                     # Utilitaires
│   ├── __init__.py
│   ├── video_recorder.py         # Enregistreur vidéo
│   └── allure_listener.py        # Listener Allure
│
├── 📂 reports/                   # Rapports générés
├── 📂 allure-results/            # Résultats Allure
├── 📂 allure-report/             # Rapport Allure HTML
├── 📂 screenshots/               # Captures d'écran
├── 📂 videos/                    # Enregistrements vidéo
│
├── requirements.txt              # Dépendances Python
├── run_tests.sh                  # Script d'exécution
├── allure.json                   # Config Allure
└── README.md                     # Ce fichier
```

---

## 🏗️ Architecture Page Object Model

### Classe BasePage

Contient toutes les fonctions communes :

```python
from pages.base_page import BasePage

class BasePage:
    # Navigation
    def ouvrir_navigateur(self, url)
    def naviguer_vers(self, url)
    def fermer_navigateur(self)
    
    # Attentes
    def attendre_element_visible(self, locator)
    def attendre_chargement_page(self)
    
    # Interactions
    def cliquer_element(self, locator)
    def saisir_texte(self, locator, texte)
    def recuperer_texte(self, locator)
    
    # Vérifications
    def verifier_element_visible(self, locator)
    def verifier_texte_present(self, texte)
    
    # Captures
    def capturer_ecran(self, nom)
```

### Classes de Locators

```python
from locators.home_locators import HomeLocators

class HomeLocators(BaseLocators):
    HERO_TITLE = "xpath://h1[contains(text(), 'paiement')]"
    BTN_SE_LANCER = "css:a.btn--black.btn--arrow"
    MENU_PRODUITS = "xpath://div[contains(text(), 'Produits')]"
```

### Pages héritant de BasePage

```python
from pages.home_page import HomePage

class HomePage(BasePage):
    def acceder_page_accueil(self):
        self.ouvrir_navigateur(self.url)
        self.accepter_cookies()
    
    def verifier_page_accueil(self):
        return self.verifier_element_visible(HomeLocators.HERO_TITLE)
```

---

## 📊 Allure Report

### Génération du rapport

```bash
# Après exécution des tests
allure generate allure-results --clean -o allure-report

# Ouvrir le rapport
allure open allure-report
```

### Fonctionnalités du rapport

- 📈 **Graphiques** - Tendances et statistiques
- 📸 **Screenshots** - Captures d'écran attachées
- 🎬 **Vidéos** - Enregistrements des tests
- 📝 **Logs** - Détails d'exécution
- 🏷️ **Tags** - Organisation par feature/story

### Tags disponibles

| Tag | Description |
|-----|-------------|
| `smoke` | Tests de fumée |
| `regression` | Tests de régression |
| `critical` | Tests critiques |
| `feature:XXX` | Feature testée |
| `severity:XXX` | Niveau de sévérité |

---

## 🎬 Enregistrement Vidéo

Le framework inclut un enregistreur vidéo automatique :

```python
from utils.video_recorder import VideoRecorder

# Utilisation
recorder = VideoRecorder(test_name="mon_test")
recorder.demarrer_enregistrement()

# ... exécution du test ...

recorder.arreter_enregistrement()
recorder.attacher_video_allure()
```

Les vidéos sont automatiquement attachées au rapport Allure.

---

## 🔧 Configuration

### Variables d'environnement

```bash
export BROWSER=chrome
export HEADLESS=false
```

### Fichier settings.py

```python
# config/settings.py
BASE_URL = "https://www.monext.com"
BROWSER = "chrome"
HEADLESS = False
IMPLICIT_WAIT = 10
PAGE_LOAD_TIMEOUT = 30
```

---

## 📝 Exemples de tests

### Test Robot Framework

```robot
*** Test Cases ***
La page d'accueil se charge correctement
    [Documentation]    Vérifie le chargement de la page
    [Tags]    smoke    critical
    Accepter les cookies si présents
    Le titre de la page devrait contenir    Monext
    L'élément devrait être visible    ${HERO_TITRE}
    Capturer une preuve visuelle    accueil
```

---

## 🐛 Dépannage

### Problèmes courants

1. **ChromeDriver non trouvé**
   ```bash
   brew install chromedriver
   ```

2. **Allure non installé**
   ```bash
   brew install allure
   ```

3. **Timeout sur les éléments**
   - Augmenter `IMPLICIT_WAIT` dans settings.py

---

## 👥 Contribution

1. Fork le projet
2. Créer une branche (`git checkout -b feature/AmazingFeature`)
3. Commit (`git commit -m 'Add AmazingFeature'`)
4. Push (`git push origin feature/AmazingFeature`)
5. Ouvrir une Pull Request

---

## 📄 Licence

Ce projet est sous licence MIT.

---

<div align="center">

**Développé avec ❤️ pour Monext**

</div>
# Monext_E2E
