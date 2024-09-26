
# fedoraworkstations-postinstall

<p align="center">
    <img src="utils/logo.png" alt="Fedora Logo" width="180">
</p>

## Overview

This script automates the post-installation setup of a Fedora Workstation. It includes tasks such as updating firmware, configuring DNF for faster downloads, installing RPM Fusion, managing packages, configuring GNOME settings, and much more. The goal is to streamline the setup process after a fresh installation of Fedora Workstation.

## Installation Steps

1. **Clone the Repository**:  
   Clone this repository to your local machine.

    ```bash
    git clone https://github.com/yurisilli/FedoraWorkstation-PostInstallScript.git
    cd FedoraWorkstation-PostInstallScript
    ```

2. **Make the Script Executable**:  
   Before running the script, make sure it is executable.

    ```bash
    chmod +x run.sh
    ```

3. **Run the Script**:  
   Execute the script to begin the post-installation setup.

    ```bash
    sudo bash ./run.sh
    ```

4. **Enter Password**:  
   You will be prompted to enter your user password to authorize system changes.

## Future Enhancements
- **Manual Configurations**: Some manual configurations might still be needed. These are marked as `# TODO` in the script for further customization.