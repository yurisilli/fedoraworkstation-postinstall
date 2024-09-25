# Update Firmware
sudo fwupdmgr get-devices
sudo fwupdmgr refresh --force
sudo fwupdmgr get-updates
sudo fwupdmgr update

# DNF Boost
echo 'max_parallel_downloads=10' | sudo tee -a /etc/dnf/dnf.conf

# Enable RPM Fusion (free and nonfree)
sudo dnf install -y \
    https://mirrors.rpmfusion.org/free/fedora/rpmfusion-free-release-$(rpm -E %fedora).noarch.rpm \
    https://mirrors.rpmfusion.org/nonfree/fedora/rpmfusion-nonfree-release-$(rpm -E %fedora).noarch.rpm
sudo dnf upgrade --refresh -y
sudo dnf groupupdate -y core
sudo dnf install -y rpmfusion-free-release-tainted dnf-plugins-core

# Install Nvidia Drivers
sudo dnf install -y akmod-nvidia

# Install RPMs
sudo dnf install -y gnome-tweaks
sudo dnf install -y steam
sudo dnf install -y gnome-power-manager
sudo dnf install -y coolercontrol

# Uninstall RPMs
sudo dnf remove -y libreoffice-core # LibreOffice
sudo dnf remove -y gnome-contacts   # Contacts
sudo dnf remove -y gnome-weather    # Weather
sudo dnf remove -y simple-scan      # Document Scanner
sudo dnf remove -y gnome-tour       # Tour
sudo dnf remove -y gnome-maps       # Maps
sudo dnf remove -y gnome-clocks     # Clocks
sudo dnf remove -y totem            # Videos
sudo dnf remove -y yelp             # Help
sudo dnf remove -y mediawriter      # Fedora Media Writer
sudo dnf remove -y rhythmbox        # Rhythmbox
sudo dnf remove -y snapshot         # Camera

# DNF Clean
sudo dnf autoremove
sudo dnf clean all

#Enable Flatpak
flatpak remote-add --if-not-exists flathub https://flathub.org/repo/flathub.flatpakrepo
flatpak update -y

# Install Flatpak
flatpak install -y flathub net.davidotek.pupgui2 # ProtonUp-Qt
flatpak install -y flathub com.spotify.Client
flatpak install -y flathub com.mattjakeman.ExtensionManager # Gnome Extension Manager
flatpak install -y flathub com.rtosta.zapzap # Whatsapp App

# Install Oh My ZSH
sudo dnf install -y zsh curl util-linux-user
sh -c "$(curl -fsSL https://raw.github.com/ohmyzsh/ohmyzsh/master/tools/install.sh)" "" --unattended
chsh -s "$(which zsh)"

# Install Starship
curl -sS https://starship.rs/install.sh | sh
echo 'eval "$(starship init zsh)"' >>~/.zshrc


bash ./run-gnome-settings.sh

bash ./run-fix-cedilla.sh