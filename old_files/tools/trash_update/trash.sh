################################################################
#   > File Name     : trash.sh
#   > Author        : gsj
#   > mail          : guosijia@sylincom.com
#   > Created Time  : 2020.03.23 17:37
################################################################
#!/bin/sh

date_day="`date +%m-%d-%Y`"
my_name=`whoami`

if [[ $my_name != guosijia ]]; then
if [[ ! -d ~/.tools/trash]]; then
	mkdir -p ~/.tools/trash
	cp -rf ~guosijia/.tools/trash ~/.tools/
else
	cp -rf ~guosijia/.tools/trash ~/.tools/
fi
fi

sh ~/.tools/trash/trash_fuc.sh
