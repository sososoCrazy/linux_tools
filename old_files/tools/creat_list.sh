#########################################################################
#   > File Name:     creat_list.sh
#   > Author:        gsj
#   > mail:          guosijia@sylincom.com
#   > Created Time:  2019.12.20 17:49
#########################################################################
#!/bin/sh

# Use 'list ./xxx *.xxx' to creat a new filelist.
alias list='creat_list'

# Use 'list_a ./xxx *.xxx' to add new list into filelist.
alias list_a='creat_list_a'

creat_list()
{
	echo $1
	echo $2
	echo $3
	find $1 -name $2 | tee filelist
}

creat_list_a()
{
	find $1 -name $2 | tee -a filelist
}
