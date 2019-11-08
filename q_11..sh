#Write a shell script display username who have login and those users that have logged out.

read -p 'Enter username to check: ' user

if who -u | grep -q "^$user "; then
    top -u "$user"
else
    echo "User $user is not logged in"
fi
