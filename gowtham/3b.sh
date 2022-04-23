stty echo
echo -e"\n Enter password"
read pass1
echo -e"\n Confirm password"
read pass2
if [ "$pass1" = "$pass2" ];then
	echo -e"\n Terminal locked"
	while true
	do
		echo -e"\n Enter the password"
		read pass3
		if [ "$pass1" = "$pass3" ];then
				echo -e"\n terminal unlocked"
				stty echo
				exit
			else
				echo -e"\n try again"
		fi 
	done
else
	echo -e "\n mismatch"
	stty echo
fi
