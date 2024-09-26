
<p align="center">
    <img src="utils/logo.png" alt="Fedora Logo" width="180">
</p>

**Fedora Workstation Post-Install Script**
=====================================

**Description**
---------------

Este script automatiza a configuração pós-instalação do Fedora Workstation. Ele executa tarefas como atualizações de firmware, configuração do DNF para downloads mais rápidos, instalação do RPM Fusion, gerenciamento de pacotes, configuração de configurações do GNOME entre outros.

**Instalação**
--------------

Para instalar o script, siga os passos abaixo:

1. Clone o repositório:
   ```
   git clone https://github.com/yurisilli/FedoraWorkstation-PostInstallScript.git
   cd FedoraWorkstation-PostInstallScript
   ```
2. Torne o script executável:
   ```
   chmod +x run.sh
   ```
3. Execute o script:
   ```
   sudo bash ./run.sh
   ```
4. Insira sua senha de usuário para autorizar as alterações no sistema.

**Funcionalidades**
------------------

* Atualização de firmware
* Configuração do DNF para downloads mais rápidos
* Instalação do RPM Fusion (free e nonfree)
* Gerenciamento de pacotes
* Configuração de configurações do GNOME
* Instalação de drivers NVIDIA
* Instalação de pacotes RPM
* Desinstalação de pacotes RPM desnecessários
* Limpeza do DNF
* Ativação do Flatpak com o repositório Flathub
* Instalação de pacotes Flatpak
* Configuração do fix-cedilha para teclados US com layout PT-BR

**Licença**
------------

Este projeto é licenciado sob a licença GNU General Public License, versão 3.

**Créditos**
------------

* Marco Paganini (paganini@paganini.net) - autor do script fix-cedilha

---

**Fedora Workstation Post-Install Script**
=====================================

**Description**
---------------

This script automates the post-installation configuration of a Fedora Workstation. It performs tasks such as firmware updates, configuring DNF for faster downloads, installing RPM Fusion, managing packages, configuring GNOME settings, and more.

**Installation**
--------------

To install the script, follow the steps below:

1. Clone the repository:
   ```
   git clone https://github.com/yurisilli/FedoraWorkstation-PostInstallScript.git
   cd FedoraWorkstation-PostInstallScript
   ```
2. Make the script executable:
   ```
   chmod +x run.sh
   ```
3. Run the script:
   ```
   sudo bash ./run.sh
   ```
4. Enter your user password to authorize the changes to the system.

**Features**
------------

* Firmware updates
* Configuring DNF for faster downloads
* Installing RPM Fusion (free and nonfree)
* Package management
* Configuring GNOME settings
* Installing NVIDIA drivers
* Installing RPM packages
* Uninstalling unnecessary RPM packages
* Cleaning up DNF
* Enabling Flatpak with the Flathub repository
* Installing Flatpak packages
* Configuring the fix-cedilha for US keyboards with PT-BR layout

**License**
------------

This project is licensed under the GNU General Public License, version 3.

**Credits**
------------

* Marco Paganini (paganini@paganini.net) - author of the fix-cedilha script