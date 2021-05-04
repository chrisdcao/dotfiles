# ----------- CHANGE THEME BASED ON TIME ----------
# set the cursor color to be changable
# gsettings set org.gnome.Terminal.Legacy.Profile:/org/gnome/terminal/legacy/profiles:/:$profileID/ cursor-colors-set true
# calling variable for later usage
defaultprofile=$(gsettings get org.gnome.Terminal.ProfilesList default)
profileID=$(echo "$defaultprofile" | cut -d "'" -f 2)
theme=$(gsettings get org.gnome.desktop.interface gtk-theme)
# random=$((1 + $RANDOM % 10))
# I-Beam cursorshape on each new session. Other escape sequences include:
# \e[0 q or \e[ q: reset to whatever's defined in the profile settings
# \e[1 q: blinking block
# \e[2 q: steady block
# \e[3 q: blinking underline
# \e[4 q: steady underline
# \e[5 q: blinking I-beam
# \e[6 q: steady I-beam
echo -ne '\e[1 q'

# if [[ $(pgrep terminal) != '' ]]
# then
    # gsettings set org.gnome.desktop.background picture-uri ~/Pictures/BigSur/bigsur2.xml
# fi
export TERM=xterm-256color
if [[ $theme == "'WhiteSur-dark-alt'" ]]
then
    gsettings set org.gnome.desktop.interface monospace-font-name 'Fixedsys Excelsior 12'
    gsettings set org.gnome.Terminal.Legacy.Profile:/org/gnome/terminal/legacy/profiles:/:$profileID/ bold-is-bright true
    gsettings set org.gnome.Terminal.Legacy.Profile:/org/gnome/terminal/legacy/profiles:/:$profileID/ cursor-colors-set true

    # shades_of_purple
    gsettings set org.gnome.Terminal.Legacy.Profile:/org/gnome/terminal/legacy/profiles:/:$profileID/ highlight-colors-set true 
    gsettings set org.gnome.Terminal.Legacy.Profile:/org/gnome/terminal/legacy/profiles:/:$profileID/ highlight-background-color '#7d44b2'
    gsettings set org.gnome.Terminal.Legacy.Profile:/org/gnome/terminal/legacy/profiles:/:$profileID/ highlight-foreground-color '#E1EFFF'
    gsettings set org.gnome.Terminal.Legacy.Profile:/org/gnome/terminal/legacy/profiles:/:$profileID/ background-color '#1e1e3f'
    gsettings set org.gnome.Terminal.Legacy.Profile:/org/gnome/terminal/legacy/profiles:/:$profileID/ foreground-color 'rgb(225,239,255)'
    gsettings set org.gnome.Terminal.Legacy.Profile:/org/gnome/terminal/legacy/profiles:/:$profileID/ cursor-foreground-color 'rgb(0,0,0)' 
    gsettings set org.gnome.Terminal.Legacy.Profile:/org/gnome/terminal/legacy/profiles:/:$profileID/ cursor-background-color 'rgb(255,208,0)' 
    dconf write /org/gnome/terminal/legacy/profiles:/:$profilesID/palette "['rgb(0,0,0)', 'rgb(236,58,55)',  'rgb(58,217,0)', 'rgb(250,208,0)', 'rgb(105,67,255)', 'rgb(255,44,112)', 'rgb(128,252,255)', 'rgb(255,255,255)', 
                                                                            'rgb(92,92,97)', 'rgb(236,58,55)', 'rgb(117,228,76)', 'rgb(250,208,0)', 'rgb(105,67,255)', 'rgb(251,148,255)', 'rgb(128,252,255)', 'rgb(45,43,85)']"

    # srcery
    # gsettings set org.gnome.Terminal.Legacy.Profile:/org/gnome/terminal/legacy/profiles:/:$profileID/ highlight-colors-set false
    # gsettings set org.gnome.Terminal.Legacy.Profile:/org/gnome/terminal/legacy/profiles:/:$profileID/ background-color '#1C1B19'
    # gsettings set org.gnome.Terminal.Legacy.Profile:/org/gnome/terminal/legacy/profiles:/:$profileID/ foreground-color '#FCE8C3'
    # gsettings set org.gnome.Terminal.Legacy.Profile:/org/gnome/terminal/legacy/profiles:/:$profileID/ cursor-foreground-color '#1C1B19' 
    # gsettings set org.gnome.Terminal.Legacy.Profile:/org/gnome/terminal/legacy/profiles:/:$profileID/ cursor-background-color '#FBB829' 
    # dconf write /org/gnome/terminal/legacy/profiles:/:$profilesID/palette "['#1C1B19', '#EF2F27',  '#519F50', '#FBB829', '#2C78BF', '#E02C6D', '#0AAEB3', '#D0BFA1', 
                                                                            # '#918175', '#F75341', '#98BC37', '#FED06E', '#68A8E4', '#FF5C8F', '#53FDE9', '#FCE8C3']"

    echo $theme > ~/vim_mode.txt
    if [[ -n "$PS1" ]] && [[ -z "$TMUX" ]]
    then
            tmux && exit
    fi
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
    # xcode ( old version )
    gsettings set org.gnome.Terminal.Legacy.Profile:/org/gnome/terminal/legacy/profiles:/:$profileID/ highlight-colors-set true 
    gsettings set org.gnome.Terminal.Legacy.Profile:/org/gnome/terminal/legacy/profiles:/:$profileID/ highlight-background-color '#2d9eff'
    gsettings set org.gnome.Terminal.Legacy.Profile:/org/gnome/terminal/legacy/profiles:/:$profileID/ highlight-foreground-color '#ffffff'
    gsettings set org.gnome.Terminal.Legacy.Profile:/org/gnome/terminal/legacy/profiles:/:$profileID/ foreground-color 'rgb(0,0,0)'
    # gsettings set org.gnome.Terminal.Legacy.Profile:/org/gnome/terminal/legacy/profiles:/:$profileID/ background-color 'rgb(251,241,199)'
    gsettings set org.gnome.Terminal.Legacy.Profile:/org/gnome/terminal/legacy/profiles:/:$profileID/ background-color 'rgb(255,255,255)'
    gsettings set org.gnome.Terminal.Legacy.Profile:/org/gnome/terminal/legacy/profiles:/:$profileID/ cursor-colors-set true
    gsettings set org.gnome.Terminal.Legacy.Profile:/org/gnome/terminal/legacy/profiles:/:$profileID/ cursor-foreground-color 'rgb(255,255,255)' 
    gsettings set org.gnome.Terminal.Legacy.Profile:/org/gnome/terminal/legacy/profiles:/:$profileID/ cursor-background-color 'rgb(0,0,0)'
    gsettings set org.gnome.Terminal.Legacy.Profile:/org/gnome/terminal/legacy/profiles:/:$profileID/ bold-is-bright false
    # gsettings set org.gnome.desktop.interface monospace-font-name 'Cartograph CF Regular 10'
    dconf write /org/gnome/terminal/legacy/profiles:/:$profileID/palette "['rgb(38,38,38)', 'rgb(209,47,27)', '#008311', 'rgb(120,73,42)', 'rgb(15,104,160)', 'rgb(173,61,164)', 'rgb(62,128,135)', 'rgb(128,79,184)', 
                                                                          'rgb(38,38,38)', 'rgb(209,47,27)', 'rgb(45,133,4)', 'rgb(120,73,42)', 'rgb(15,104,160)', 'rgb(128,79,184)', 'rgb(62,128,135)', 'rgb(180,216,253)']"
    gsettings set org.gnome.desktop.interface monospace-font-name 'Fixedsys Excelsior 12'
    echo $theme > ~/vim_mode.txt

    if [[ -n "$PS1" ]] && [[ -z "$TMUX" ]]
    then
            tmux && exit
    fi
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
