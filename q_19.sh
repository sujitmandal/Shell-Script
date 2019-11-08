#    • Write shell script to print given number in reverse order, 
#for example, if n mber is 123 then it must printed as 321.

echo "Enter a Number:"
read a
 
rev=0
sd=0
or=$a

while [ $a -gt 0 ]
do
        sd=`expr $a % 10`
        temp=`expr $rev \* 10`
        rev=`expr $temp + $sd`
        a=`expr $a / 10`
done
echo '\n'
echo "Reverse of $or is $rev"
