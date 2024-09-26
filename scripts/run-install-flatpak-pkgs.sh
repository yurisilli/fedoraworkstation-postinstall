#!/bin/bash

# Function to install a Flatpak package and check for errors
install_flatpak_package() {
    local package="$1"
    if sudo flatpak install -y flathub "$package"; then
        echo "Successfully installed: $package"
    else
        echo "Error: Failed to install package: $package" >&2
    fi
}

echo "Installing Flatpak packages ------------------------------------------------------------------------------"

# Array of Flatpak packages to install
FLATPAK_PACKAGES=(
    com.mattjakeman.ExtensionManager    # GNOME Extension Manager
    net.davidotek.pupgui2               # ProtonUp-Qt
    com.spotify.Client                  # Spotify
    com.rtosta.zapzap                   # WhatsApp
)

# Install each package
for package in "${FLATPAK_PACKAGES[@]}"; do
    install_flatpak_package "$package"
done

echo "Flatpak packages installation completed ------------------------------------------------------------------------------"
