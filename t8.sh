zenity --info --text="Welcome to the c file creator."
choice=$(zenity --title="C file Manager" --entry --text=" Enter:
\n 1 to Create a file 
\n 2 to Execute your file 
\n 3 to Delete a file")
case $choice in
        1) b=$(zenity --entry --text="Enter file name")
                touch $b.c
                zenity --info --text="C file created succesfully"
                break
                ;;

        2)c=$(zenity --entry --text=" Enter file name to be executed")
         if [ -f "$c.c" ]
         then
                 zenity --info --text=" File exists!"
                 gcc -o $c "$c.c"
                 chmod 777 $c.c
                 ./"$c"
                 zenity --info --text="C file executed succesfully"
                 break
         else
                 zenity --error --title="Error" --text="File does not exist, create a file first"
                 break
         fi
                 ;;

         3)f=$(zenity --entry --text=" Enter file name to be removed")
          if [ -f "$f.c" ]
          then
                  zenity --info --text="File removed!"
                  rm "$f.c"
                  zenity --info --text="C file deleted succesfully"
                  break
         else    
                  zenity --error --title="Error" --text="File does not exist, create a file first"
                 break
         fi
                 ;;
         *)      zenity --error --title="Error" --text="File does not exist, create a file first"
                 break
                 ;;
 esac     