#!/bin/bash

# Function to install a package and check for errors
install_package() {
    local package="$1"
    if sudo dnf install -y "$package"; then
        echo "Successfully installed: $package"
    else
        echo "Error: Failed to install package: $package" >&2
    fi
}

echo "Installing DNF packages ------------------------------------------------------------------------------"

# Array of packages to install
DNF_PACKAGES=(
    gnome-tweaks
    gnome-power-manager # must for notebooks
    p7zip
    p7zip-plugins
    steam
    qbittorrent
    coolercontrol # must for desktops
)

# Install each package
for package in "${DNF_PACKAGES[@]}"; do
    install_package "$package"
done

echo "DNF packages installation completed ------------------------------------------------------------------------------"
