if [ $# -eq 0 ];then
	echo -e "\n No argument \n"
	exit 
else
	if [ -d $1 ];then
		S=`ls -lr "$1" | grep "^-" | tr -s " " | cut -d " " -f5,9 | sort -n | tail -1`
		echo -e "\n Maximum file size and file name is $S\n"
	else
		echo -e "\n Directory $1 dose not exit \n"
	fi
fi
