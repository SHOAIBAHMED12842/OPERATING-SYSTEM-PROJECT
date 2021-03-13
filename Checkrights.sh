zenity --info --text="Checking Rights of the file"
p=$(zenity --title="Check Rights Manager" --entry --text="Check file permissions for your created files
\nEnter 1 to check execution rights.
\nEnter 2 to check read rights.
\nEnter 3 to check write rights. ")


case $p in

        1) filename=$(zenity --entry --text=" Enter filename with extension")
                if [ -x "$filename" ]
         then
                zenity --info --text=" $filename have Execution rights!"

        else
                zenity --info --text="File not have Execution rights!"
        fi
                ;;
        2)filename=$(zenity --entry --text=" Enter filename with extension")
                if [ -r "$filename" ]
         then
                zenity --info --text=" $filename have Read rights!"
        else
                zenity --info --text="File not have Read rights!"
        fi
             ;;
        3) filename=$(zenity --entry --text=" Enter filename with extension")
                 if [ -w "$filename" ]
         then
                zenity --info --text= "$filename have Write rights!"
 else
                zenity --info --text= "File not have Write rights!"
        fi
                ;;
        *) zenity --error --title="Error" --text= " Invalid input."
