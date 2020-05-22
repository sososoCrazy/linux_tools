#########################################################################
#   > File Name:     trash.sh
#   > Author:        gsj
#   > mail:          guosijia@sylincom.com
#   > Created Time:  2019.12.13 10:03
#########################################################################
#!/bin/sh

############ Trash #####################################################################
### 重定义rm命令 ### 
#DATE_TIME="`date +%Y_%m-%d_%H:%M`"
auto_rm_date=7
date_day="`date +%m-%d-%Y`"
my_name=`whoami`
#pwd_user=`cd ~ && pwd`
alias tree='~guosijia/.tools/tree/bin/tree -A -C -l -F'

# Help
#sh ~guosijia/.tools/trash/rmhelp.sh
alias rmhelp='sh ~guosijia/.tools/trash/rmhelp.sh' 
alias rmupdate='echo -e "\ntrash code::" && cat ~guosijia/.tools/trash/trash.sh && echo -e "\n\nrmhelp and rmupdate:" && cat ~guosijia/.tools/trash/rmhelp.sh '

# 定义回收站目录 
trash_path=~/.trash 

# Define pwd_user: cd ~ and pwd. 
pwd_now=$(pwd) && cd ~ > $trash_path/pwd_user && pwd_user=$(pwd) && cd $pwd_now > $trash_path/pwd_user
trash_path_e=$(echo $trash_path | sed "s#$pwd_user#~#g" )

# Enter your trash
alias my_trash='cd $trash_path'

# 判断 $trash_path 定义的文件是否存在，如果不存在，那么就创建 $trash_path. 
if [ ! -d $trash_path ]; then 
	mkdir -p $trash_path 
fi 
 
# 定义别名：使用 rm 就调用 trash 
alias rm=trash 
alias rmnt='/bin/rm'

# du -hd1 trash_path
alias rmdu='du -hd1 $trash_path'
 
# 使用 rmls 就调用 'ls ~/.trash' 
# 如果更改上面的回收站目录这里的目录也需要修改 
alias rmls='ls -a $trash_path' 
alias rmll='tree -L 2 $trash_path'
 
# 使用 unrm 就调用 restorefile，需要在删除目录的父目录下执行 
alias unrm=restorefile 

# mv xxx to current file
alias mvrm=mvtrashfile
 
# 使用 rmtrash 就调用 claearteash 
alias rmtrash=cleartrash 

# 恢复文件的函数 
restorefile() 
{ 
	if [ ! -z $@ ]; then
		# Define restore_path now.
		restore_path_now=`pwd`
		restore_path_now_e=$(echo $restore_path_now | sed "s#$pwd_user#~#g" )

		# Search for inputs.
		find $trash_path/ -name *$@* | tee $trash_path/restore_list
		for restore_file in `cat $trash_path/restore_list`
		do
			restore_file_e=$(echo $restore_file | sed "s#$pwd_user#~#g" )
			read -p "Do you want to restore file : $restore_file_e? [y/n]" confirm 
			[ $confirm == 'y' ] || [ $confirm == 'Y' ]  && mv -i $restore_file $restore_path_now/ && restore_suc=1 && break
			restore_suc=0
		done
		#mv -i $trash_path/$@ $restore_path/ 
		if [[ $restore_suc == 1 ]]; then
			echo -e "Restore  $restore_file_e  to  $restore_path_now_e/  successfully. "
		else
			echo -e "Restore error. \nTry 'rmhelp' for more information. "
		fi
	else
		restore_suc_auto=0
		if [ -z $restore_path ]; then
			restore_path=`pwd`
			restore_path_e=$(echo $restore_path | sed "s#$pwd_user#~#g" )
		fi
		if [ ! -z $restore ]; then
			restore_old_step=$(echo $restore | sed "s/\/$//g")
			restore_old=$(echo $restore_old_step | grep '/' | sed "s#^.*/##g")
		fi
		mv -i $trash_path/$date_day/$restore_old $restore_path/ && \
		if [ ! -e $trash_path/$date_day/$restore_old ]; then restore_suc_auto=1; fi
		if [[ $restore_suc_auto == 1 ]]; then
			echo -e "Restore  $trash_path_e/$date_day/$restore_old  to  $restore_path_e/  successfully. "
		else
			echo -e "Restore error. \nTry to use 'rmll' and 'unrm xxxx' to restore your file.  Or try 'rmhelp' for more information. "
		fi
	fi
} 
 
# 删除文件的函数 
trash() 
{ 
date_day="`date +%m-%d_%Y`"
	# Make sure that the trash_path exists.
	if [ ! -d $trash_path ]; then 
		mkdir -p $trash_path 
	fi 

	# Make sure that the trash_path/date_day exists.
	if [ ! -d $trash_path/$date_day ]; then 
		mkdir -p $trash_path/$date_day
	fi 

	# Delete duplicate files to prevent conflicts.
	for rm_list in $@
	do
		if [ -e $trash_path/$date_day/$rm_list ]; then 
			/bin/rm -rf $trash_path/$date_day/$rm_list
		fi
	done
	for rm_list in $@
	do
		rm_list=$(echo $rm_list | sed "s#/##g")
		if [ -e $trash_path/$date_day/$rm_list ]; then 
			/bin/rm -rf $trash_path/$date_day/$rm_list
		fi
	done
	
	# Determine whether $@ is a file or a folder.
	

	# The rm function.
	mv -f $@ $trash_path/$date_day/
	if [ $? -eq 0 ]; then
		restore=$@
		restore_path=`pwd`
		restore_path_e=$(echo $restore_path | sed "s#$pwd_user#~#g" )
		echo -e "Remove  $restore_path_e/$@  to  $trash_path_e/$date_day/  successfully. "
	else
		echo -e "Remove error. \nTry 'rmhelp' for more information. "
	fi
	find $trash_path/ -mindepth 1 -maxdepth 1 -type d -ctime +$auto_rm_date -exec rm -rf {} \;&
}
 
# 清空回收站的函数 
cleartrash() 
{ 
	#if [ ! -e ~/.trash.log ]; then
	#	touch ~/.trash.log
	#fi
	read -p "确定要清空回收站吗?[y/n]" confirm 
	[ $confirm == 'y' ] || [ $confirm == 'Y' ]  && /bin/rm -rf $trash_path && mkdir $trash_path
	#[ $confirm == 'y' ] || [ $confirm == 'Y' ]  && find ~/.trash/ \( -path "." -o -path "." \) -prune -o -type f -print > ~/.trash.log && /bin/rm -rf `cat ~/.trash.log`
	#[ $confirm == 'y' ] || [ $confirm == 'Y' ]  && /bin/rm -rf $trash_path/*
	if [ $? -eq 0 ]; then
		echo -e "Clean the trash successfully. "
	else
		echo -e "Clean error. \nTry 'rmhelp' for more information. "
	fi
}
########## Trash end ###################################################################
