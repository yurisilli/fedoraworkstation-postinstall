#!/bin/bash

# Function to apply a gsettings command and check for errors
apply_setting() {
    local setting="$1"
    gsettings set $setting
    if [ $? -ne 0 ]; then
        echo "Error applying setting: $setting"
    fi
}

echo "Applying GNOME settings ------------------------------------------------------------------------------" 

# Interface Settings
apply_setting "org.gnome.desktop.interface clock-format '24h'"
apply_setting "org.gnome.desktop.interface clock-show-date true"
apply_setting "org.gnome.desktop.interface clock-show-seconds false"
apply_setting "org.gnome.desktop.interface clock-show-weekday false"
apply_setting "org.gnome.desktop.interface show-battery-percentage true"
apply_setting "org.gnome.desktop.wm.preferences button-layout ':minimize,maximize,close'"

# Behavior Settings
apply_setting "org.gnome.shell.window-switcher current-workspace-only false"
apply_setting "org.gnome.mutter center-new-windows true"
apply_setting "org.gnome.mutter auto-maximize false"

# Experimental Settings
apply_setting "org.gnome.mutter experimental-features \"['scale-monitor-framebuffer']\""

# Fonts Settings
apply_setting "org.gnome.desktop.interface document-font-name 'Noto Sans Regular 10'"
apply_setting "org.gnome.desktop.interface font-name 'Noto Sans Regular 10'"
apply_setting "org.gnome.desktop.interface monospace-font-name 'JetBrains Mono 10'"
apply_setting "org.gnome.desktop.wm.preferences titlebar-font 'Noto Sans Regular 10'"

echo "GNOME settings applied ------------------------------------------------------------------------------"