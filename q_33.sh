#Write a shell script to check whether an user is valid user or not. 

if id "$1" >/dev/null 2>&1; then
        echo "user exists"
else
        echo "user does not exist"
fi
