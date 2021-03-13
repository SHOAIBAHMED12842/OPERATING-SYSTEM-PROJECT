z=$(zenity --entry --text="Enter 1-14 to search for:
\n1 desktop files
\n2 your folder files 
\n3 home files 
\n4 bin files
\n5 lib files 
\n6 var files 
\n7 tmp files
\n8 run files
\n9 for usr files  
\n10 for root file
\n11 for sys file
\n12 for boot file
\n13 for dev file
\n14 OS project folder")

case $z in
        1) ls -l | ls /home/CL2/Desktop
                break
                ;;
        2) ls -l | ls /home/CL2
                break
                ;;
        3) ls -l | ls /home
                break
                ;;
        4) ls -l | ls /bin
                break
                ;;
        5) ls -l | ls /lib
                break
                ;;
        6) ls -l | ls /var
                break
               ;;
        7) ls -l | ls /tmp
                break
                ;;
        8) ls -l | ls /run
                break
                ;;
        9) ls -l | ls /usr
                break
                ;;
        10) ls -l | ls /root
                break
                ;;
        11) ls -l | ls /sys
                break
                ;;
        12) ls -l | ls /boot
                break
                ;;
        13) ls -l | ls /dev
                break
                ;;
        14) ls -l | ls /home/CL2/Desktop/OSPROJECT
                break
                ;;


        *) zenity --error --title="Error" --text="Invalid Selection"
                break
 ;;
esac

