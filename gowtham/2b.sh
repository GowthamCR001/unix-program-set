if [ $# -eq 0 ];then
	echo -e " \n no argument"
	exit
else
	for i in $*
	do
		if grep $i /etc/passwd > /dev/null
		then
			homedir=`grep $i /etc/passwd | cut -d ":" -f6`
			echo -e " \n Home directory of $i is $homedir\n"
		else
			echo -e " \n user $i does not found"
		fi 
	done
fi
