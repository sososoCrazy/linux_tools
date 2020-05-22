# ----------------------------------------------------------------------------
# File Name     : trash.sh
# Author        : gsj
# E-MAIL        : guosijia@sylincom.com
# Created Date  : 2020.03.23 17:37
# ----------------------------------------------------------------------------
# Version       : 20200430
# Modified Date : 2020.04.30
# Modified by   : gsj   guosijia@sylincom.com
# ----------------------------------------------------------------------------
# others        :
# ----------------------------------------------------------------------------
#!/bin/sh

date_day="`date +%m-%d-%Y`"
my_name=`whoami`

if [[ $my_name != guosijia ]]; then
if [[ ! -d ~/.tools/trash ]]; then
	mkdir -p ~/.tools/trash
	cp -rf ~guosijia/.tools/trash/* ~/.tools/trash/
else
	cp -rf ~guosijia/.tools/trash/* ~/.tools/trash/
fi
fi

. ~/.tools/trash/trash_fuc.sh
