for i in `ls`
do
	len=`expr "$i" : '.*'`
	if [ $len -ge 10 ];then
		echo $i >> f1
	fi
done
echo "\n The filename haveing more than 10 character"
cat f1
rm f1
