#Write a shell script to input numbers at command line and print a count of positive and negative numbers entered.

for i in $*
do
	if [ $i -ge 0 ]
then
	echo "positive"
else
	echo "negative"
fi
done
