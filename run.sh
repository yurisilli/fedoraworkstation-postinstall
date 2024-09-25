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
flatpak install flathub net.davidotek.pupgui2 # ProtonUp-Qt
flatpak install flathub com.spotify.Client
flatpak install flathub com.mattjakeman.ExtensionManager # Gnome Extension Manager
flatpak install flathub com.rtosta.zapzap # Whatsapp App
flatpak install flathub com.todoist.Todoist
flatpak install flathub md.obsidian.Obsidian

# Install Oh My ZSH
sudo dnf install -y zsh curl util-linux-user
sh -c "$(curl -fsSL https://raw.github.com/ohmyzsh/ohmyzsh/master/tools/install.sh)" "" --unattended
chsh -s "$(which zsh)"

# Install Starship
curl -sS https://starship.rs/install.sh | sh
echo 'eval "$(starship init zsh)"' >>~/.zshrc

# GNOME Settings
gsettings set org.gnome.desktop.interface clock-format '24h'
gsettings set org.gnome.desktop.interface clock-show-date true
gsettings set org.gnome.desktop.interface clock-show-seconds false
gsettings set org.gnome.desktop.interface clock-show-weekday false
gsettings set org.gnome.shell.window-switcher current-workspace-only false
gsettings set org.gnome.desktop.interface show-battery-percentage true
gsettings set org.gnome.desktop.wm.preferences button-layout ":minimize,maximize,close"
gsettings set org.gnome.mutter center-new-windows true
gsettings set org.gnome.mutter auto-maximize false
gsettings set org.gnome.mutter experimental-features "['scale-monitor-framebuffer']" #Experimental

# GNOME Fonts Settings
gsettings set org.gnome.desktop.interface document-font-name 'Noto Sans Regular 10'
gsettings set org.gnome.desktop.interface font-name 'Noto Sans Regular 10'
gsettings set org.gnome.desktop.interface monospace-font-name 'JetBrains Mono 10'
gsettings set org.gnome.desktop.wm.preferences titlebar-font 'Noto Sans Regular 10'

# Manual configurations
# TODO
