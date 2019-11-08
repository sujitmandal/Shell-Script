# Shell-Script
--------------

 Introduction:
---------------
A shell is special user program which provide an interface to user to use operating system services. Shell accept human readable commands from user and convert them into something which kernel can understand. It is a command language interpreter that execute commands read from input devices such as keyboards or from files. The shell gets started when the user logs in or start the terminal.


 Write a shell script that' will greet the user saying 'GOOD MORNING', 'GOOD AFTERNOON',  'GOOD EVENING' or 'GOOD NIGHT' according to the system time.
------------------------------

• Script:
--------

h=`date +%H`

if [ $h -lt 12 ]; then
  echo Good morning
elif [ $h -lt 18 ]; then
  echo Good afternoon
else
  echo Good evening
fi

 Write a shell script to rename all the files in the current directory that have upper case names to lower case. 
-----------------------------------------------------------------------------------------------------------------

• Script:
---------

for i in *; do mv $i `echo $i | tr [:upper:] [:lower:]`; done


 Write a shell script which count the number of lines and words supplied at standard input. 
-------------------------------------------------------------------------------------------

• Script:
---------

echo Enter the filename
read file

w=`cat $file | wc -w`
c=`cat $file | wc -c`
l=`grep -c "." $file`

echo Number of characters: in $file is $c
echo Number of words: in $file is $w
echo Number of lines: in $file is $l


 Write a shell script that displays all the command line arguments passed with the name of program in different lines ( 1 argument in each line ). 
--------------------

 • Script:
 ---------
 
echo "The name of the script file is $0"

echo "Total number of arguments passed to the script = $#"

if [ $# -gt 0 ]
then
  
  echo "List of arguments:"
  for arg in $@
  do
    echo "$arg"
  done

else
  
  echo "No argument provided to the script."

fi

 Write a shell script that accepts a username from the user and displays all the information about the user from /etc/passwd file .
-------------------

• Script:
---------
           
echo Enter user name:
read name

[ -z "$name" ] && {
    echo '\n'
    echo "Error: must supply a name!"
    exit 1
    }

echo '\n'
echo "UID: $(id -u "$name")"
homedir="$(eval echo "~$name")"

[ -d "$homedir" ] || { homedir="Not Found"; }
echo "Home directory: $homedir"


 Write a shell program to store the names, size, permissions of all the regular files present in the current directory in a file named backup. 
-----------------

 • Script:
 ---------
 
echo -n "Enter file name : "
read file
 
[ -w $file ] && W="Write = yes" || W="Write = No"

[ -x $file ] && X="Execute = yes" || X="Execute = No"
 
[ -r $file ] && R="Read = yes" || R="Read = No"

echo '\n' 
echo "$file permissions"
echo "$W"
echo "$R"
echo "$X"


 Write a shell script to input numbers at command line and print a count of positive and negative numbers entered.
------------------------------------------------------------------------------------------------------------------

• Script:
---------

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

• Alternative:
--------------

for i in $*
do
	if [ $i -ge 0 ]
then
	echo "positive"
else
	echo "negative"
fi
done


 Write a Shell Script to copy the content of a file to another file. 
--------------------------------------------------------------------

• Script:
--------

echo -n "Enter soruce file name : "
read src
echo -n "Enter target file name : "
read targ
if [ ! -f $src ]
then
 echo "File $src does not exists"
 exit 1
elif [ -f $targ ]
then
 echo "File $targ exist, cannot overwrite"
 exit 2
fi
cp $src $targ
status=$?
if [ $status -eq 0 ]
then
 echo 'File copied successfully'
else
 echo 'Problem copuing file'
fi


  Write a shell script display username who have login and those users that have logged out.
 -------------------------------------------------------------------------------------------
 
 • Script:
 --------
 
read -p 'Enter username to check: ' user

if who -u | grep -q "^$user "; then
    top -u "$user"
else
    echo "User $user is not logged in"
fi

 Write a shell scipt that will display the factorial of a number supplied as command line argument. The number will be passed into a function, which will calculate and return the factorial to the calling statement. 
---------------------------------------------------------------------------------------------

• Script:
---------

factorial ()
{
    if [ $1 -gt 1 ]; then
        y=`expr $1 - 1`
        factorial $y

        x=$(( $1 * $? ))
        return $x
    else
        return 1
    fi
}
echo -e "Enter a number : \c"
read num
factorial $num
echo "Factorial of $num is $?."
(P-5)

 Write shell script to print given number in reverse order, for example, if n mber is 123 then it must printed as 321.
-----------------------------------------------------------------------------------------------------------------------

• Script:
--------

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

 Write a shell script to depict the orphan process.
---------------------------------------------------

• Script:
---------

ps -elf | head -1; ps -elf | awk '{if ($5 == 1) {print $0}}'

 Write down a shell script that will display the PID of init process. 
---------------------------------------------------------------------

• Script:
---------

ps –aux


 Write a shell script that computes the gross salary of an employee
        according to the following rules given below. The basic salary is input interactively through the keyboard.
        If basic salary is < 1500 then HRA = 10% of'the basic and DA = 90% of the basic.
        If basic salary id > =1500 then HRA = Rs 500 and DA = 98% of the basic
---------------------------------------------------------------------------------

 • Script:
 ---------
 
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

 Write a shell script to check whether an user is valid user or not. 
--------------------------------------------------------------------

• Script:
----------

if id "$1" >/dev/null 2>&1; then
        echo "user exists"
else
        echo "user does not exist"
fi


  WAP in shell script to generate a Fibonacci Series.
----------------------------------------------------

• Script:
---------

clear
  echo "Enter the number: "
  read n
  x=0
  y=1
  i=2
  echo "Fibonacci Sequance is :"
  echo "$x"
  echo "$y"
  while [ $i -lt $n ]
  do
      i=`expr $i + 1 `
      z=`expr $x + $y `
      echo "$z"
      x=$y
      y=$z
  done

 WAP in shell script to check whether a Number is Palindrome or not. 
--------------------------------------------------------------------

• Script:
---------

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


License:
--------
MIT Licensed

Author:
-------
Sujit Mandal

LinkedIn : https://www.linkedin.com/in/sujit-mandal-91215013a/

Facebook : https://www.facebook.com/sujit.mandal.33671748

Twitter : https://twitter.com/mandalsujit37
