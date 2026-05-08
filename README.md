# WinAutoDeploy - Автоматизация настройки рабочего места

**WinAutoDeploy** - это профессиональный инструмент на базе PowerShell, разработанный для специалистов технической поддержки (Helpdesk) и системных администраторов. Скрипт автоматизирует процесс развертывания программного обеспечения на новых рабочих станциях под управлением Windows.

---

## 🇷🇺 Русская версия

### 🌟 Зачем это нужно?

Ручная настройка компьютера обычно занимает 1-2 часа рутинной работы. Данный скрипт сокращает время активного участия специалиста до **30 секунд**, гарантирует единообразие программной среды и полностью исключает человеческий фактор.

### 🛠 Ключевые возможности

*   **Проверка прав доступа:** Автоматический контроль запуска от имени администратора.
*   **Проверка сети:** Верификация доступа к серверам Chocolatey (порт 443) перед началом работы.
*   **Ролевая модель установки:** Три готовых профиля на выбор (Office, Developer, Admin/Master).
*   **Управление пакетами:** Автоматическая установка и настройка менеджера пакетов **Chocolatey**.
*   **Логирование:** Генерация подробного отчета об установке (`WinAutoDeploy_Log.txt`) на рабочем столе для быстрой диагностики.

### 📦 Профили установки

#### 1. Профиль "Office" (Стандартный рабочий ПК)

*   **Браузеры:** Chrome, Firefox.
*   **Офис и PDF:** LibreOffice, Adobe Reader.
*   **Коммуникации:** Zoom, Microsoft Teams.
*   **Утилиты:** 7-Zip, VLC Media Player.

#### 2. Профиль "Developer" (Для разработчиков)

*   Включает в себя **Office Profile** + **VS Code**, **Git** и **Notepad++**.

#### 3. Профиль "Admin/Master" (Инструментарий сервисного инженера)

*   Включает в себя **Office Profile** + профессиональные утилиты:
    *   **AnyDesk:** Удаленная поддержка.
    *   **Sysinternals:** Продвинутые системные утилиты Microsoft.
    *   **CrystalDiskInfo:** Мониторинг состояния дисков (S.M.A.R.T.).
    *   **AIDA64 Extreme:** Диагностика и стресс-тестирование.
    *   **HWInfo & WizTree:** Датчики железа и анализ дискового пространства.

### 🚀 Инструкция по использованию

1.  Скачайте файл `WinAutoDeploy.ps1`.
2.  Нажмите правой кнопкой мыши на файл и выберите **«Выполнить с помощью PowerShell»** (запуск от имени администратора обязателен).
3.  Выберите нужный профиль (1, 2 или 3) в появившемся консольном меню.
4.  Следите за процессом в консоли или изучите лог-файл на рабочем столе по завершении работы.

### 🎓 Контекст проекта

Этот проект демонстрирует мои профессиональные навыки:
*   **PowerShell Scripting:** Использование функций, блоков обработки ошибок (try-catch) и переменных окружения.
*   **ИТ-автоматизация:** Реализация концепции «Инфраструктура как код» (IaC) для повседневных задач поддержки.
*   **Техническая документация:** Подготовка четких инструкций и структурирование рабочих процессов.

### Лицензия / Отказ от ответственности

Этот проект распространяется под лицензией **MIT** — подробности см. в файле [LICENSE](LICENSE).

### ⚠️ ВАЖНО:

* **Использование на свой страх и риск:** Данный скрипт и инструкция предоставляются «как есть» (as is). Автор не несет ответственности за любые сбои в работе вашей системы, потерю данных или повреждение оборудования.
* **Внешние зависимости:** При установке библиотек Вы используете стороннее ПО, за безопасность которого автор ответственности не несет.
* **Проверка кода:** Настоятельно рекомендуется изучить код перед запуском и протестировать его в безопасной среде, а перед применением выполнить создание точки восстановления системы.

---

**Авторские права © 2026 [Иван Бирючков / https://github.com/biryuchkov-ia]**

---

## 🇬🇧 English Version

# WinAutoDeploy - Workstation Setup Automation

**WinAutoDeploy** is a professional PowerShell-based tool designed for IT Support Specialists (Helpdesk) and System Administrators. The script automates the software deployment process for new Windows workstations.

### 🌟 Why Use It?

Manual computer setup typically involves 1-2 hours of repetitive tasks. This script reduces the specialist's active involvement to **30 seconds**, ensures a standardized software environment, and eliminates human error.

### 🛠 Key Features

*   **Privilege Check:** Automatic verification of Administrative rights.
*   **Network Verification:** Connectivity check to Chocolatey servers (Port 443) before execution.
*   **Role-Based Deployment:** Three pre-configured profiles (Office, Developer, Admin/Master).
*   **Package Management:** Automatic installation and configuration of the **Chocolatey** package manager.
*   **Logging:** Generates a detailed installation report (`WinAutoDeploy_Log.txt`) on the Desktop for diagnostics.

### 📦 Installation Profiles

#### 1. "Office" Profile (Standard Workstation)

*   **Browsers:** Chrome, Firefox.
*   **Office & PDF:** LibreOffice, Adobe Reader.
*   **Communications:** Zoom, Microsoft Teams.
*   **Utilities:** 7-Zip, VLC Media Player.

#### 2. "Developer" Profile

*   Includes **Office Profile** + **VS Code**, **Git**, and **Notepad++**.

#### 3. "Admin/Master" Profile (Service Engineer Toolkit)

*   Includes **Office Profile** + Professional utilities:
    *   **AnyDesk:** Remote support tool.
    *   **Sysinternals:** Advanced Microsoft system utilities.
    *   **CrystalDiskInfo:** S.M.A.R.T. disk monitoring.
    *   **AIDA64 Extreme:** Diagnostics and stress testing.
    *   **HWInfo & WizTree:** Hardware sensors and disk space analysis.

### 🚀 How to Use

1.  Download the `WinAutoDeploy.ps1` file.
2.  Right-click the file and select **"Run with PowerShell"** (Administrator privileges are required).
3.  Choose the desired profile (1, 2, or 3) in the console menu.
4.  Monitor the process in the console or review the log file on your Desktop once finished.

### 🎓 Project Context

This project demonstrates the following skills:
*   **PowerShell Scripting:** Use of functions, error handling (try-catch blocks), and environment variables.
*   **IT Automation:** Implementing "Infrastructure as Code" (IaC) concepts for daily support tasks.
*   **Technical Documentation:** Preparing clear instructions for both technical and non-technical users.

### License / Disclaimer

This project is licensed under the **MIT License** — see the [LICENSE](LICENSE) file for details.

### ⚠️ IMPORTANT:

* **Use at your own risk:** These script and instruction are provided "as is". The author is not liable for any system failures, data loss, or hardware damage.
* **External dependencies:** By installing libraries, you are using third-party software for which the author assumes no responsibility.
* **Code review:** It is highly recommended to study the code before execution and test it in a safe environment. It is also advised to create a system restore point before use.

---

**Copyright © 2026 [Ivan Biryuchkov / https://github.com/biryuchkov-ia]**

---