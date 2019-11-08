#WAP in shell script to generate a Fibonacci Serie

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
  
