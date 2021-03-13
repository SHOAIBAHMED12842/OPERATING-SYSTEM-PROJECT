zenity --info --text="Welcome to the File/Folder Creator"
d=$(zenity --entry --text=" Enter 1 to create a file and 2 for create a folder")

case $d in
        1) e=$(zenity --entry --text=" Enter the name of the file you wish to create")
                cat > $e
                zenity --info --text=" File created successfully!"
                break
                ;;
        2) f=$(zenity --entry --text=" Enter the name of the folder you wish to create")
                        mkdir $f
                        zenity --info --text=" Folder created successfully!"
                        break
                        ;;
                *) zenity --error --text="No such option exists!"
                        break
                        ;;
        esac
