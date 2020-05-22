################################################################
#   > File Name     : trash_auto_rm.sh
#   > Author        : gsj
#   > mail          : guosijia@sylincom.com
#   > Created Time  : 2020.01.17 10:38
################################################################
#!/bin/sh

# 定义回收站目录 
trash_path=~/.trash 

seconds=$((24*3600))

#for ((i=1;i>0;i++)) 
while $auto_rm_date > 0
do
#	find $trash_path/ -mindepth 1 -maxdepth 1 -type d -ctime +$auto_rm_date -exec rm -rf {} \;
	find $trash_path/ -mindepth 1 -maxdepth 1 -type d -ctime +5 -exec rm -rf {} \;
	sleep ${seconds}
#	sleep 3
done
