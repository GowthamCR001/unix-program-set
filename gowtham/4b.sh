if [ $# -eq 0 ];then
	echo -e "\n File is not specifide"
	exit
fi
if [ $# -eq 2 ];then
	dir="$2"
	echo -e"\n Directroy is "$dir
	cd "$dir"
else
echo -e"\n current directory"
fi
file=$1
echo -e "\n File is: "$file
a=`ls -l $file | cut -d " " -f2`
a=`ls -l $file | tr -s " " | cut -d " " -f2`
link=$a
if [ $link -eq 1 ];then
	echo -e "\n file has not link"
else
	echo -e "\n link are : "$link
fi
