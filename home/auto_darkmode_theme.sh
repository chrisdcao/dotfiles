# ----------- CHANGE THEME BASED ON TIME ----------
# set the cursor color to be changable
# gsettings set org.gnome.Terminal.Legacy.Profile:/org/gnome/terminal/legacy/profiles:/:$profileID/ cursor-colors-set true
# calling variable for later usage
defaultprofile=$(gsettings get org.gnome.Terminal.ProfilesList default)
profileID=$(echo "$defaultprofile" | cut -d "'" -f 2)
theme=$(gsettings get org.gnome.desktop.interface gtk-theme)
# random=$((1 + $RANDOM % 10))

# if [[ $(pgrep terminal) != '' ]]
# then
    # gsettings set org.gnome.desktop.background picture-uri ~/Pictures/BigSur/bigsur2.xml
# fi

if [[ $theme == "'WhiteSur-dark-alt'" ]]
then
    gsettings set org.gnome.Terminal.Legacy.Profile:/org/gnome/terminal/legacy/profiles:/:$profileID/ background-color 'rgb(40,40,40)'
    gsettings set org.gnome.Terminal.Legacy.Profile:/org/gnome/terminal/legacy/profiles:/:$profileID/ foreground-color 'rgb(235,219,178)'
    gsettings set org.gnome.Terminal.Legacy.Profile:/org/gnome/terminal/legacy/profiles:/:$profileID/ cursor-colors-set true
    gsettings set org.gnome.Terminal.Legacy.Profile:/org/gnome/terminal/legacy/profiles:/:$profileID/ cursor-background-color 'rgb(251,241,199)' 
    gsettings set org.gnome.Terminal.Legacy.Profile:/org/gnome/terminal/legacy/profiles:/:$profileID/ cursor-foreground-color 'rgb(40,40,40)'
    gsettings set org.gnome.Terminal.Legacy.Profile:/org/gnome/terminal/legacy/profiles:/:$profileID/ bold-is-bright true

    gsettings set org.gnome.desktop.interface monospace-font-name 'Operator Mono Medium 10.5'
    # if [[ $random -lt 4 ]]
    # then
        # cat ~/starwars6.txt
    # elif [[ $random -ge 4 && $random -lt 7 ]]
    # then
        # cat ~/ship.txt
    # else
        # cat ~/ship2.txt
    # fi
    echo $theme > ~/vim_mode.txt

    # function change_theme() {
        # # print out the number of bash when all terminal close. Keep track of this so we know how to make the condition below
        # # echo $(pgrep -c -u khanhcao96 bash)
        # if [[ $(pgrep -c -u khanhcao96 bash) -le 3 ]]
        # then
            # gsettings set org.gnome.desktop.background picture-uri ~/Pictures/BigSur/bigsur.xml
        # fi
    # }

    # trap change_theme 0

else
    gsettings set org.gnome.Terminal.Legacy.Profile:/org/gnome/terminal/legacy/profiles:/:$profileID/ foreground-color 'rgb(40,40,40)'
    gsettings set org.gnome.Terminal.Legacy.Profile:/org/gnome/terminal/legacy/profiles:/:$profileID/ background-color 'rgb(251,241,199)'
    gsettings set org.gnome.Terminal.Legacy.Profile:/org/gnome/terminal/legacy/profiles:/:$profileID/ cursor-colors-set true
    gsettings set org.gnome.Terminal.Legacy.Profile:/org/gnome/terminal/legacy/profiles:/:$profileID/ cursor-foreground-color 'rgb(251,241,199)' 
    gsettings set org.gnome.Terminal.Legacy.Profile:/org/gnome/terminal/legacy/profiles:/:$profileID/ cursor-background-color 'rgb(40,40,40)'
    gsettings set org.gnome.Terminal.Legacy.Profile:/org/gnome/terminal/legacy/profiles:/:$profileID/ bold-is-bright false
    gsettings set org.gnome.desktop.interface monospace-font-name 'Operator Mono Book 10.5'
    echo $theme > ~/vim_mode.txt

    # function change_theme() {
        # # print out the number of bash when all terminal close. Keep track of this so we know how to make the condition below
        # # echo $(pgrep -c -u khanhcao96 bash)
        # if [[ $(pgrep -c -u khanhcao96 bash) -le 3 ]]
        # then
            # gsettings set org.gnome.desktop.background picture-uri ~/Pictures/BigSur/bigsur.xml
        # fi
    # }

    # trap change_theme 0

fi

# ----------- END OF CHANGE THEME BASED ON TIME ----------
