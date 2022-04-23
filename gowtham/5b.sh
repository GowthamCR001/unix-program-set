set `date`
y=$3
echo "\n Today date $y"
if [ $y -lt 10 ];then
	cal | sed "s/ $y / * /"
else
        cal | sed "s/ $y / ** /"	
fi
