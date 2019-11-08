#Write a shell script that accepts a username from the user and displays all the information about the user from /etc/passwd file .

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
