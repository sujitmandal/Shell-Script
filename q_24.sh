#    • Write a shell script that computes the gross salary of an employee
# according to the following rules given below. The basic salary is input interactively through the keyboard.
# If basic salary is < 1500 then HRA = 10% of'the basic and DA = 90% of the basic.
#I f basic salary id > =1500 then HRA = Rs 500 and DA = 98% of the basic

echo "Enter basic salary: "
read sal

if [ $sal -ge 1500 ]
then
         da=`expr $sal \* 90 / 100`
         har=`expr $sal  \* 10  / 100`
         Nsal=`expr $sal + $da + $har`
elif [ $sal -lt 1500 ]
then
         da=`expr $sal \* 98 / 100`
         har=500
         Nsal=`expr $sal + $da + $har`
fi
         echo "\n"
         echo "Basic Salary  $sal "
         echo "DA            $da "
         echo "HAR           $har "
         echo "---------------------------"
         echo "Net Salary is Rs. $Nsal "
