#!/bin/bash

BASE_PI="\/home\/pi\/generico\/"
FILE="main"
TEMP="/home/pi/generico/new_file.txt"
CRONB="/home/pi/generico/cron_backup.txt"

crontab -l > $TEMP
echo $TEMP

if [ $1 -eq 0 ]
then
	sed '23s/.*/\#  *\/'$1' * * * * '$BASE_PI''$FILE' /' $TEMP > $CRONB
else
	sed '23s/.*/  *\/'$1' * * * * '$BASE_PI''$FILE' /' $TEMP > $CRONB
fi
#crontab cron_backup.txt
