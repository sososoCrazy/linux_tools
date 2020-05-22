################################################################
#   > File Name     : MMM.sh
#   > Author        : gsj
#   > mail          : guosj.so@gmail.com
#   > Created Time  : 2019.12.30 14:28
################################################################
#!/bin/sh

# Use 'qdm xxxx.xxx' to remove ^M in file 'xxxx.xxx'
alias qdm='removeM'

# Use 'qdml *.xxx' to remove ^M    in all files '*.xxx'      in './' .
alias qdml='removeMLIST'

removeM()
{
	for LIST in "$@"
	do
		mv $LIST ${LIST}_M
		cat ${LIST}_M |tr -d '\r' > $LIST
		/bin/rm -rf ${LIST}_M
		echo "Finish $LIST"
	done
}

removeMLIST()
{
	#LIST_FILE=`find $1 -name $2`
	find ./ -name $@ | tee filelist
	for LIST in `cat filelist`
	do
		mv $LIST ${LIST}_M
		cat ${LIST}_M |tr -d '\r' > $LIST
		/bin/rm -rf ${LIST}_M
		echo "Finish $LIST"
	done
	/bin/rm -rf filelist
}
