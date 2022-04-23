echo -e "\n Enter a file name"
read fn
if [ ! -e $fn ] ; then
	echo -e "\n file does not exist"
	exit
else
	fper=`ls -l $fn | cut -c 2-10`
	fowner=`ls -l $fn | cut -d " " -f3`
	fsize=`ls -l $fn | cut -d " " -f5`
	fdate=`ls -l $fn | cut -d " " -f6`
	fname=`ls -l $fn | cut -d " " -f8`
fi
echo -e " \n File permission is $fper"
echo -e " \n File owner is $fowner"
echo -e "\n File size is $fsize"
echo -e " \n File name is $fname"
