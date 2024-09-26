#!/bin/bash

# Update Firmware
sudo fwupdmgr get-devices
sudo fwupdmgr refresh --force
sudo fwupdmgr get-updates
sudo fwupdmgr update

# DNF Boost
echo 'max_parallel_downloads=10' | sudo tee -a /etc/dnf/dnf.conf

# Enable RPM Fusion (free and nonfree)
sudo dnf install -y \
    https://mirrors.rpmfusion.org/free/fedora/rpmfusion-free-release-"$(rpm -E %fedora)".noarch.rpm \
    https://mirrors.rpmfusion.org/nonfree/fedora/rpmfusion-nonfree-release-"$(rpm -E %fedora)".noarch.rpm
sudo dnf upgrade --refresh -y
sudo dnf groupupdate -y core
sudo dnf install -y rpmfusion-free-release-tainted dnf-plugins-core

# Install Nvidia Drivers if available
if [ "$(lspci | grep -ic NVIDIA)" -eq 0 ]; then
    echo "No NVIDIA GPU found on the system"
else
    sudo dnf install -y akmod-nvidia
fi
# Install RPM Packages
bash ./scripts/run-install-dnf-pkgs.sh

# Uninstall RPM Packages - Debloating the system
bash ./scripts/run-remove-dnf-pkgs.sh

# DNF Clean
sudo dnf autoremove
sudo dnf clean all

#Enable Flatpak with Flathub remote
flatpak remote-add --if-not-exists flathub https://flathub.org/repo/flathub.flatpakrepo
flatpak update -y

# Install Flatpak Packages
bash ./scripts/run-install-flatpak-pkgs.sh

# GNOME Settings
bash ./scripts/run-gnome-settings.sh

# Fix Cedilha for PT-BR using US Keyboard
bash ./scripts/run-fix-cedilla.sh