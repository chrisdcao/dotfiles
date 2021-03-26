# ----------- CHANGE THEME BASED ON TIME ----------

# set the cursor color to be changable
gsettings set org.gnome.Terminal.Legacy.Profile:/org/gnome/terminal/legacy/profiles:/:$profileID/ cursor-colors-set true
# calling variable for later usage
defaultprofile=$(gsettings get org.gnome.Terminal.ProfilesList default)
profileID=$(echo "$defaultprofile" | cut -d "'" -f 2)
theme=$(gsettings get org.gnome.desktop.interface gtk-theme)
hour=$(date +'%H')
if [[ $theme == "'WhiteSur-dark-alt'" ]]
then
    gsettings set org.gnome.Terminal.Legacy.Profile:/org/gnome/terminal/legacy/profiles:/:$profileID/ background-color black
    gsettings set org.gnome.Terminal.Legacy.Profile:/org/gnome/terminal/legacy/profiles:/:$profileID/ foreground-color cyan
    gsettings set org.gnome.Terminal.Legacy.Profile:/org/gnome/terminal/legacy/profiles:/:$profileID/ cursor-colors-set true
    gsettings set org.gnome.Terminal.Legacy.Profile:/org/gnome/terminal/legacy/profiles:/:$profileID/ cursor-background-color cyan
    gsettings set org.gnome.Terminal.Legacy.Profile:/org/gnome/terminal/legacy/profiles:/:$profileID/ cursor-foreground-color black
    gsettings set org.gnome.Terminal.Legacy.Profile:/org/gnome/terminal/legacy/profiles:/:$profileID/ bold-is-bright true
else
    gsettings set org.gnome.Terminal.Legacy.Profile:/org/gnome/terminal/legacy/profiles:/:$profileID/ background-color white
    gsettings set org.gnome.Terminal.Legacy.Profile:/org/gnome/terminal/legacy/profiles:/:$profileID/ foreground-color black
    gsettings set org.gnome.Terminal.Legacy.Profile:/org/gnome/terminal/legacy/profiles:/:$profileID/ cursor-background-color black
    gsettings set org.gnome.Terminal.Legacy.Profile:/org/gnome/terminal/legacy/profiles:/:$profileID/ cursor-foreground-color white
    gsettings set org.gnome.Terminal.Legacy.Profile:/org/gnome/terminal/legacy/profiles:/:$profileID/ bold-is-bright false
fi

# ----------- END OF CHANGE THEME BASED ON TIME ----------
