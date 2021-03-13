zenity --info --text="Welcome to viewing the file"
  
        filename=$(zenity --title="View File Window"  --entry --text=" Enter filename with extension")
                if [  -f "$filename" ]
         then
                zenity --info --text=" $filename have Read rights!"
                 zenity --info --text=" $filename file exist!"
                 cat $filename
        else
                zenity --info --text="No such file exists!"
        fi

