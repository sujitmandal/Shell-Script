num1=2.2
num2=4.5

result=$(awk -v n1=$num1 -v n2=$num2 'BEGIN{print (n2>n1)?1:0}')
