zenity --title="ProcessSynchronization" --info --text="Execute only sort command"
  
a=$(zenity --entry --text="Enter an input process filename.")
          b=$(zenity --entry --text="Enter an output command process.")
          gcc -o Task7ProcessSync Task7ProcessSync.c
          chmod 751 Task7ProcessSync.c
          output=$(./Task7ProcessSync $b $a)
          zenity --info --text="$output"
