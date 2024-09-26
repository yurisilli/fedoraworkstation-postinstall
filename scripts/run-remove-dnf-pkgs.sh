#!/bin/bash

# Function to remove a package and check for errors
remove_package() {
    local package="$1"
    if sudo dnf remove -y "$package"; then
        echo "Successfully removed: $package"
    else
        echo "Error: Failed to remove package: $package" >&2
    fi
}

echo "Removing DNF pre-installed packages ------------------------------------------------------------------------------"

# Array of packages to remove
DNF_PACKAGES=(
    libreoffice-core    # LibreOffice
    gnome-contacts      # Contacts
    gnome-weather       # Weather
    simple-scan         # Document Scanner
    gnome-tour          # Tour
    gnome-maps          # Maps
    gnome-clocks        # Clocks
    totem               # Videos
    yelp                # Help
    mediawriter         # Fedora Media Writer
    rhythmbox           # Rhythmbox
    snapshot            # Camera
    connections         # Connections
)

# Remove each package
for package in "${DNF_PACKAGES[@]}"; do
    remove_package "$package"
done

echo "DNF pre-installed packages removal completed ------------------------------------------------------------------------------"