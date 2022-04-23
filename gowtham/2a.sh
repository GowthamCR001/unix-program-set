if [ $# -eq 0 ];then
	echo -e " \n no argument"
       exit
elif [ $# -ne 2 ];then
 echo -e " \n not enter two arguments"
exit
else
	if [ -e $1 ];then
		if [ -e $2 ];then
			f1=`ls -l $1 | cut -c 2-10`
			f2=`ls -l $2 | cut -c 2-10`
			if [ "$f1" = "$f2" ];then
			echo  " Identical premission $f1"
		else
			echo -e"\n file 1 Premission $f1"
			echo -e"\n file 2 Premission $f2"
		fi
	else
		echo -e " \n file $2 does not found"
	fi
else
	echo -e " \n file $1 does not found"
fi
fi

