# 🧪 Monext E2E Test Automation Framework

<div align="center">

![Monext Banner](https://img.shields.io/badge/MONEXT-E2E_AUTOMATION-blue?style=for-the-badge&logo=selenium)

[![Robot Framework](https://img.shields.io/badge/Robot_Framework-7.0-brightgreen?style=for-the-badge&logo=robotframework)](https://robotframework.org/)
[![Python](https://img.shields.io/badge/Python-3.11-blue?style=for-the-badge&logo=python)](https://www.python.org/)
[![Selenium](https://img.shields.io/badge/Selenium-4.x-green?style=for-the-badge&logo=selenium)](https://www.selenium.dev/)
[![Allure](https://img.shields.io/badge/Allure-2.13-orange?style=for-the-badge&logo=allure)](https://docs.qameta.io/allure/)

**🚀 Professional End-to-End Testing Solution for Monext Web Application**

[Installation](#-installation) • [Usage](#-usage) • [Structure](#-project-structure) • [Reports](#-reporting--allure) • [Architecture](#-architecture)

</div>

---

## 📋 Project Overview

This framework is a robust, industrial-grade **End-to-End (E2E) Automation Framework** designed for the [Monext](https://www.monext.com/) website. Built with **Robot Framework** and **Python**, it implements the **Page Object Model (POM)** design pattern to ensure maximum maintainability, scalability, and readability.

### ✨ Key Features

- 🏗️ **Advanced POM Architecture** - Separation of locators, page objects, and test scripts.
- 🎬 **Automatic Video Recording** - High-quality video captures for every test execution.
- 📊 **Rich Allure Reporting** - Interactive dashboards with screenshots, logs, and trends.
- 📸 **Smart Screenshots** - Automatic screenshot capture on test failure.
- 🇫🇷 **Bilingual Documentation** - English & French support for global teams.
- 🔧 **CI/CD Ready** - Prepared for integration with Jenkins, GitLab CI, or GitHub Actions.
- 🛡️ **Robust Interactions** - JavaScript fallbacks for tricky element interactions.

---

## 🛠️ Installation

### 📋 Prerequisites

Ensure you have the following installed:
- **Python 3.11+**
- **Google Chrome** (Latest version)
- **Allure Commandline** (`brew install allure`)

### ⚙️ Setup

```bash
# 1. Clone the repository
git clone https://github.com/hakantetik44/Monext_E2E.git
cd Monext_E2E

# 2. Create and activate virtual environment
python3 -m venv venv
source venv/bin/activate  # On Windows: venv\Scripts\activate

# 3. Install dependencies
pip install -r requirements.txt

# 4. Install Browser drivers (if not handled by WebDriverManager)
brew install chromedriver
```

---

## 🚀 Usage

### ⚡ Quick Start Scripts

We provide a powerful `run_tests.sh` script to simplify execution:

```bash
chmod +x run_tests.sh

# 💨 Run Smoke Tests
./run_tests.sh --smoke

# 🔥 Run All Tests
./run_tests.sh --all

# 📊 Run and Generate Allure Report
./run_tests.sh --all --report

# 🧹 Clean previous results
./run_tests.sh --clean
```

### 🛠️ Manual Execution

```bash
# Execute specific test file
robot --outputdir reports tests/test_monext.robot

# Execute by Tags
robot --include smoke --outputdir reports tests/
```

---

## 📁 Project Structure

```text
Monext_E2E/
├── 📂 locators/          # 🎯 UI Element selectors (XPath, CSS)
├── 📂 pages/             # 🛠️ Page Object Classes (Logic & Actions)
├── 📂 tests/             # 📝 Test Suites (Robot Framework files)
├── 📂 resources/         # 📚 Global Keywords & Variables
├── 📂 utils/             # ⚙️ Helpers (Video recording, Allure listeners)
├── 📂 output/            # 📦 Test execution artifacts (XML, logs)
├── 📂 reports/           # 📊 HTML Reports
├── 📄 requirements.txt   # 🐍 Python dependencies
├── 📄 run_tests.sh       # 🚀 Master execution script
└── 📄 README.md          # 📖 Project documentation
```

---

## 🏗️ Architecture

### 💎 Page Object Model (POM)

The framework follows a strict POM hierarchy to prevent code duplication:

1.  **Locators**: Pure string definitions of elements.
2.  **BasePage**: Common Selenium actions (click, type, wait, etc.).
3.  **Pages**: High-level business actions (e.g., `Login to account`, `Submit form`).
4.  **Tests**: Human-readable test steps using Keywords.

Example Page Logic:
```python
class HomePage(BasePage):
    def access_home_page(self):
        self.open_browser(self.url)
        self.accept_cookies()
    
    def verify_hero_section(self):
        return self.wait_until_visible(HomeLocators.HERO_TITLE)
```

---

## 📊 Reporting & Allure

Interactive reports are generated automatically. To view the latest results:

```bash
# Generate report from results
allure generate output/allure --clean -o reports/allure-report

# Open in browser
allure open reports/allure-report
```

### 📈 What's inside the report?
- **Detailed Steps**: Every keyword executed is logged.
- **Failures**: Screenshots and stack traces for easy debugging.
- **Video**: Full MP4 recording of the test session.
- **Environment**: OS, Browser, and Version metadata.

---

## 🤝 Contribution

1. Fork the Project
2. Create your Feature Branch (`git checkout -b feature/AmazingFeature`)
3. Commit your Changes (`git commit -m 'Add some AmazingFeature'`)
4. Push to the Branch (`git push origin feature/AmazingFeature`)
5. Open a Pull Request

---

## 📄 License

Distributed under the MIT License. See `LICENSE` for more information.

<div align="center">

**Created with ❤️ for High-Quality Automation**

[![Follow me](https://img.shields.io/github/followers/hakantetik44?label=Follow&style=social)](https://github.com/hakantetik44)

</div>
