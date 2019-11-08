#Write a shell program to store the names, size, permissions of all the regular files present in the current directory in a file named backup. 

echo -n "Enter file name : "
read file
 
# find out if file has write permission or not
[ -w $file ] && W="Write = yes" || W="Write = No"
 
# find out if file has excute permission or not
[ -x $file ] && X="Execute = yes" || X="Execute = No"
 
# find out if file has read permission or not
[ -r $file ] && R="Read = yes" || R="Read = No"

echo '\n' 
echo "$file permissions"
echo "$W"
echo "$R"
echo "$X"
