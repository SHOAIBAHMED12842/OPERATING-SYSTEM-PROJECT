ps -o pid,ppid,stat,cmd
g=$(zenity --entry --text="Which process do you want to kill?")
gcc -o killtask killtask.c
chmod 777 killtask.c
h=$(./killtask $g)
zenity --info --text="$h"
