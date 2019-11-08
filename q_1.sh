#Write a shell script that' will greet the user saying 'GOOD MORNING', 'GOOD AFTERNOON',  'GOOD EVENING' or 'GOOD NIGHT' according to the system time.

h=`date +%H`

if [ $h -lt 12 ]; then
  echo Good morning
elif [ $h -lt 18 ]; then
  echo Good afternoon
else
  echo Good evening
fi
