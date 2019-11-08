#Write a shell script to input numbers at command line and print a count of positive and negative numbers entered.

echo "Enter a Number:"
read n

if [ $n -gt 0 ]
then
        echo '\n'
	echo "Number is positive"
else
	if [ $n -eq 0 ]
	then
		echo '\n'
		echo "Number is Zero!"
	else
		echo '\n'
		echo "Number is Negative!!"
	fi
fi
