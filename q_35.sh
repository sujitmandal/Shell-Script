#WAP in shell script to check whether a Number is Palindrome or not. 

echo -n "Enter number : "
read n

sd=0
rev=""
on=$n

while [ $n -gt 0 ]
do
    sd=$(( $n % 10 ))
    n=$(( $n / 10 ))
    rev=$( echo ${rev}${sd} )
done

if [ $on -eq $rev ];
then
  echo "Number is palindrome"
else
  echo "Number is NOT palindrome"
fi
