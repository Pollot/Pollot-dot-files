#
# ~/.bash_profile
#

[[ -f ~/.bashrc ]] && . ~/.bashrc

export QT_QPA_PLATFORMTHEME=gtk2

# run startx if it's not already started and you logged into tty1
# exec ensures that the user is logged out when the X server exits, crashes or is killed
if [ -z "${DISPLAY}" ] && [ "$(tty)" = "/dev/tty1" ]; then
	PS3='Please enter your choice: '
	options=("Qtile" "Awesome" "Quit")
	select opt in "${options[@]}"
	do
    	case $opt in
        	"Qtile")
            	exec startx "$HOME/.config/X11/xinitrc-qtile"
            	;;
        	"Awesome")
            	exec startx "$HOME/.config/X11/xinitrc-awesome"
            	;;
        	"Quit")
            	break
            	;;
        	*) echo "Invalid option, try again.";;
    	esac
	done
fi
