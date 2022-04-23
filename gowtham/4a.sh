if [ $# -eq 0 ];then
	echo -e "\n enter file name as agrument"
	exit
else
	for i in $*
	do
		if [ -e $1 ];then
			fn=`echo $i | tr "[a-z]" "[A-Z]"`
			cp $1 $fn
			echo -e "\n file $i converted to $fn"
		else
			echo -e "\n File $i does not exists"
		fi
	done
fi
