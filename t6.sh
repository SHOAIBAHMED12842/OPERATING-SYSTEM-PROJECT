choice=$(zenity --title="APPLICATION OPEN WINDOW" --entry --text=" Enter:
\n1) for firefox
\n2) for Dragon Player
\n3)for GIMP
\n4) for LibreOffice
\n5) for Dolphin ")
case $choice in
        1)  firefox
                break
                ;;
        2) dragon player
                break
                ;;

        3) gimp
        break
                ;;
        4) libreoffice
                break
                ;;
        5) dolphin
                break
                ;;
        *) zenity --error --title="Error" --text=" Invalid input."
                break
                ;;
esac
