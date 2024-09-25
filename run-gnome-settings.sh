# Interface Settings
gsettings set org.gnome.desktop.interface clock-format '24h'
gsettings set org.gnome.desktop.interface clock-show-date true
gsettings set org.gnome.desktop.interface clock-show-seconds false
gsettings set org.gnome.desktop.interface clock-show-weekday false
gsettings set org.gnome.desktop.interface show-battery-percentage true
gsettings set org.gnome.desktop.wm.preferences button-layout ":minimize,maximize,close"

# Behavior Settings
gsettings set org.gnome.shell.window-switcher current-workspace-only false
gsettings set org.gnome.mutter center-new-windows true
gsettings set org.gnome.mutter auto-maximize false

#Experimental Settings
gsettings set org.gnome.mutter experimental-features "['scale-monitor-framebuffer']"

# GNOME Fonts Settings
gsettings set org.gnome.desktop.interface document-font-name 'Noto Sans Regular 10'
gsettings set org.gnome.desktop.interface font-name 'Noto Sans Regular 10'
gsettings set org.gnome.desktop.interface monospace-font-name 'JetBrains Mono 10'
gsettings set org.gnome.desktop.wm.preferences titlebar-font 'Noto Sans Regular 10'