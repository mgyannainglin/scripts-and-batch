##Author by YNL
#!/bin/bash
echo "Note!This is the clear chache from memory and swap"
free -h
read -r -p "This step will going to clear memory and swap caches. Are You Sure? [Y/n] " input
 
 case $input in
     [yY][eE][sS]|[yY])
 echo "This will clear memory and swap caches"
sync; echo 1 > /proc/sys/vm/drop_caches 
swapoff -a && swapon -a
free -h
echo "Successfully cleared caches."
 ;;
     [nN][oO]|[nN])
 echo "Quit"
        ;;
     *)
 echo "Invalid input..."
 ;;
 esac


