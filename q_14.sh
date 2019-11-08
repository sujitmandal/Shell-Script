#Write a shell scipt that will display the factorial of a number supplied as command line argument. The number will be passed into a function, which will calculate and return the factorial to the calling statement. 

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

