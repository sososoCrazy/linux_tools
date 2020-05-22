################################################################
#   > File Name     : ceshi.sh
#   > Author        : gsj
#   > mail          : guosijia@sylincom.com
#   > Created Time  : 2020.01.15 09:21
################################################################
#!/bin/sh

set abcderf 2
#while $abcderf > 1
while true
do
	echo 1
	sleep 1
	echo
	sleep 1
	echo
	sleep 1
	echo
	sleep 1
	echo
	sleep 1
done
















#for trash_date_list in "find $trash_path/ -mindepth 1 -maxdepth 1 -type d -ctime -2"
#find $trash_path/ -mindepth 1 -maxdepth 1 -type d -ctime -2
#find $trash_path/ -mindepth 1 -maxdepth 1 -type d -ctime +7 -exec rm -rf {} \;



#DATE_TIME=`date +%Y_%m-%d_%H:%M`

#trash() 
#{ 
##DATE_TIME="`date +%Y_%m-%d_%H:%M`"
#DATE_day="`date +%m-%d_%Y`"
#date_day="`date +%m-%d_%Y`"
#	# Make sure that the trash_path exists.
#	if [ ! -d $trash_path ]; then 
#		mkdir -p $trash_path 
#	fi 
#
#	# Make sure that the trash_path/date_day exists.
#	if [ ! -d $trash_path/$date_day ]; then 
#		mkdir -p $trash_path/$date_day
#	fi 
#
#	# Delete duplicate files to prevent conflicts.
#	for rm_list in $@
#	do
#	if [ -e $trash_path/$date_day/$rm_list ]; then 
#		/bin/rm -rf $trash_path/$date_day/$rm_list
#	fi
#	done
#	
#	# The rm function.
#	mv -f $@ $trash_path/$date_day/$@
#	if [ $? -eq 0 ]; then
#		restore=$@
#		restore_path=`pwd`
#		restore_path_e=$(echo $restore_path | sed "s#$pwd_user#~#g" )
#		echo -e "Remove  $restore_path_e/$@  to  $trash_path_e/$date_day/  successfully. "
#	else
#		echo -e "Remove error. \nTry 'rmhelp' for more information. "
#	fi
#} 
 






#pwd_user="`cd ~ && pwd`"
#echo $pwd_user
#
#pwd_now=`pwd`
#pwd_echo=$(echo $pwd_now | sed "s#$pwd_user#~#g" )
##pwd_e=$(echo `pwd` | sed 's/\/export\/pfs\/home\/lte\_soc\/guosijia/~/g')
#
#echo $pwd_echo
