zenity --info --text="Welcom to sorting the file"
        filename=$(zenity --title="Sorting Window" --entry --text=" Enter filename with extension")
                if [  -f "$filename" ]
         then
                zenity --info --text=" $filename have Read rights!"
                 zenity --info --text=" $filename file exist!"
                 sort $filename
        else
                zenity --info --text="No such file exists!"
        fi

