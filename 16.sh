echo "Enter the number"
read a

i=2
z=0

while [ $i -lt $a ]
do
s=`expr $a % $i`
if [ $s -eq $z ]
then
echo '\n'
echo "$a is not a Prime Number"
exit
else
i=`expr $i + 1`
fi
done
echo '\n'
echo "$a is a Prime Number"
