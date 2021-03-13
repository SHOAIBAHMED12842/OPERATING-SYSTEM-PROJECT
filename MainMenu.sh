zenity --info --text="Group Members:MUHAMAMD UNAIS :(17B-017-SE)\nSHOAIB AHMED :(17B-033-SE)\nALIAKBAR :(16B-056-SE)"
d=$(zenity --title="MAIN - MENU" --entry --text="Welcome to the GUI-based operating system Demo! Enter 1-13 to choose what you want to do:
\n1)File/Folder Creation
\n2)File Rights Managment
\n3)File Search
\n4)Operations (through threads/processes)
\n5)Process Task  Manager
\n6)Open Application
\n7)Data Sharing between Processes
\n8)C Program Creator
\n9)Automatically kill Parent Process with progress bar
\n10)Automatically close the dialogue with progress bar
\n11)Checking Rights
\n12)View (file)
\n13)Sorting Text (file)")

   case $d in
                1) chmod 751 t1.sh
                        break
                    bash t1.sh
                        ;;
                2) chmod 751 t2.sh
                        break
                   bash t2.sh
                        ;;
                3) chmod 751 t3.sh
                   bash t3.sh
                   break
                        ;;
                4) e=$(zenity --entry --text="Enter 1-6 to choose what you want to do:
\n1)Threads For Matrix Operation Executed
\n2)Threads For Semaphore Operation Executed
\n3)Process for Array Sorting
\n4)Process for Orphan ID
\n5)Process for Zombie Process")
                       case $e in
                                   1) zenity --info --text="Threads created."
                                        gcc -o Task4threadMatOp Task4threadMatOp.c -lpthread
                                        chmod 751 Task4threadMatOp.c
                                        ./Task4threadMatOp
                                       break
                                        ;;
                                  2) zenity --info --text="Threads created."
                                        gcc -o Task4threadsemaphore Task4threadsemaphore.c -lpthread
                                        chmod 751 Task4threadsemaphore.c
                                        ./Task4threadsemaphore
                                       break
                                        ;;
                                3) zenity --info --text="Process created"
                                        gcc -o Task4Processsorting Task4Processsorting.c
                                        chmod 751 Task4Processsorting.c
                                        i=$(./Task4Processsorting)
                                        zenity --info --text="$i"
                                       break
                                        ;;
                                4) zenity --info --text="Process created"
                                        gcc -o Task4Processorphan Task4Processorphan.c
                                        chmod 751 Task4Processorphan.c
                                        j=$(./Task4Processorphan)
                                        zenity --info --text="$j"
                                       break
                                        ;;
                                5) zenity --info --text="Process created"
                                        gcc -o Task4Processzobmie Task4Processzobmie.c
                                        chmod 751 Task4Processzobmie.c
                                        k=$(./Task4Processzobmie)
                                        zenity --info --text="$k"
                                        break
                                        ;;
                                *) zenity --error --title="Error" --text="An error occured"
                                                                                                                                 65,1          40%
                                      break
                                        ;;
                        esac
                         ;;
                5) zenity --info --text="Processes are shown in a minute"
                       chmod 751 t5.sh
                        bash t5.sh
                        break
                        ;;
                6)     chmod 751 t6.sh
                        bash t6.sh
                       break
                        ;;
                7) zenity --info --text="Enter details for sharing of data"
                       chmod 751 t7.sh
                       bash t7.sh
                      break
                       ;;
                8) zenity --info --text="Enter further details:"
                        chmod 751 t8.sh
                        bash t8.sh
                       break
                        ;;

                9) zenity --info --text="Waiting a while!"
                          zenity --title "AUTO KILLING PARENT PROCESS" --progress --auto-kill
                           zenity --info --text="Parent process killed succesfully"
                           break
                        ;;
                10) zenity --info --text="Waiting a while!"
                         zenity --title "AUTO CLOSE DIALOGUE " --progress --auto-close
                          zenity --info --text="Dialogue box close succesfully"
                          break
                        ;;

               11) chmod 751 Checkrights.sh
                     bash Checkrights.sh
                     break
                        ;;
                12) chmod 751 Viewfile.sh
                     bash Viewfile.sh
                     break
                        ;;
                13) chmod 751 sort.sh
                     bash sort.sh
                     break
                        ;;
                *) zenity --error title="Error" --text="Invalid option"
                        ;;
        esac
