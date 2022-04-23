echo -e "\n Enter the file name"
read fn
if [ ! -e $fn ];then
       echo -e "\n file $fn does not exist"
exit
else
	echo -e "\n file name $fn exist"
	fdate=`ls -l $fn | tr -s " " | cut -d " " -f6,7`
	echo "\n the file $fn created date and time is $fdate"
fi
