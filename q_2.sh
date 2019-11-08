#Write a shell script to rename all the files in the current directory that have upper case names to lower case. 

for i in *; do mv $i `echo $i | tr [:upper:] [:lower:]`; done
