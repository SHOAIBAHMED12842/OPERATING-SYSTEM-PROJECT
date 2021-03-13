zenity --info --text="Rights Manager"
p=$(zenity --title="Rights Manager" --entry --text="Change file permissions for your created files
\nEnter 1 to grant execution rights to others.
\nEnter 2 to grant read rights to others.
\nEnter 3 to give write rights to others.")

#p=$(zenity --title="File Rights Manager" --entry --text= "   SELECTION ")

case $p in

        1) filename=$(zenity --entry --text=" Enter filename with extension")
                if [ -e "$filename" ]
         then

                chmod 771 $filename
                zenity --info --text=" Execution rights granted!"
                break

        else
                zenity --info --text="No such file exists!"
                break
        fi
                ;;
        2)filename=$(zenity --entry --text=" Enter filename with extension")
                if [ -e "$filename" ]
         then

                chmod 744 $filename
                zenity --info --text=" Read rights granted!"
                break
        else
                zenity --info --text="No such file exists!"
                break
        fi
             ;;
        3) filename=$(zenity --entry --text=" Enter filename with extension")
                 if [ -e "$filename" ]
         then

                chmod 722 $filename
                zenity --info --text= " Write rights granted!"
                break
 else
                zenity --info --text= "No such file exists!"
                break
        fi
                ;;
        *) zenity --error --title="Error" --text= " Invalid input."
                break
                ;;
esac
