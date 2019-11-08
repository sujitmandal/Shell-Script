echo Enter the number of file:
read  n

i=0

while [ $i -lt $n ]
do
	echo Enter file name
        read c
        echo '\n'
        gcc $c && ./a.out
        echo  '\n'
done
