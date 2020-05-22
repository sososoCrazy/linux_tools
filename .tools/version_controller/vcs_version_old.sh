################################################################
#   > File Name     : vcs_version.sh
#   > Author        : gsj
#   > mail          : guosj.so@gmail.com
#   > Created Time  : 2020.01.07 16:12
################################################################
#!/bin/sh

alias vcs_version_help='sh ~/.tools/version_controller/vcs_version_help.sh'
alias vcs_version_controller_update='echo -e "\nvcs version controller code::" && cat ~/.tools/version_controller/vcs_version.sh && echo -e "\n\nvcs version help and update:" && cat ~/.tools/version_controller/vcs_version_help.sh '

## Change VCS 2014 2016 2018 ##
vcs2014()
{
	if [ -z $PATH_bak ] ; then
		PATH_bak=$PATH
	fi
	if [ -z $LD_LIBRARY_PATH_bak ] ; then
		LD_LIBRARY_PATH_bak=$LD_LIBRARY_PATH
	fi
	export PATH=$(echo $PATH | sed '1i /export/pfs/edatools/synopsys/vcs-mx_vJ-2014.12-SP1/bin:/export/pfs/edatools/synopsys/vcs-mx_vJ-2014.12-SP1/linux/bin:/export/pfs/edatools/synopsys/vcs-mx_vJ-2014.12-SP1/amd64/bin:')
	if [ $? -eq 0 ]; then vcs2014_suc1=1; else vcs2014_suc1=0; fi
	export LD_LIBRARY_PATH=$(echo $LD_LIBRARY_PATH | sed '1i /export/pfs/edatools/synopsys/vcs-mx_vJ-2014.12-SP1/linux/lib:/export/pfs/edatools/synopsys/vcs-mx_vJ-2014.12-SP1/amd64/lib:')
	if [ $? -eq 0 ]; then vcs2014_suc2=1; else vcs2014_suc2=0; fi
	export VCS_HOME=/export/pfs/edatools/synopsys/vcs-mx_vJ-2014.12-SP1
	if [ $? -eq 0 ]; then vcs2014_suc3=1; else vcs2014_suc3=0; fi
	if [[ $vcs2014_suc1 && $vcs2014_suc2 && $vcs2014_suc3 && 1 ]]; then 
		echo -e "Change vcs version to vcs-mx_vJ-2014.12-SP1 successfully. "
	else
		echo -e "Change vcs version to vcs-mx_vJ-2014.12-SP1 failed. "
	fi
	echo -e "If you have some errors you cannot resolve, you can try to reopen the node."
}
vcs2018()
{
	if [ -z $PATH_bak ] ; then
		PATH_bak=$PATH
	fi
	if [ -z $LD_LIBRARY_PATH_bak ] ; then
		LD_LIBRARY_PATH_bak=$LD_LIBRARY_PATH
	fi
	export PATH=$(echo $PATH | sed '1i /export/pfs/edatools/synopsys/vcs-mx_vO-2018.09-SP2/vcs-mx/O-2018.09-SP2/bin:/export/pfs/edatools/synopsys/vcs-mx_vO-2018.09-SP2/vcs-mx/O-2018.09-SP2/linux64/bin:')
	if [ $? -eq 0 ]; then vcs2018_suc1=1; else vcs2018_suc1=0; fi
	export LD_LIBRARY_PATH=$(echo $LD_LIBRARY_PATH | sed '1i /export/pfs/edatools/synopsys/vcs-mx_vO-2018.09-SP2/vcs-mx/O-2018.09-SP2/linux64/lib:/export/pfs/edatools/synopsys/vcs-mx_vO-2018.09-SP2/vcs-mx/O-2018.09-SP2/amd64/lib:')
	if [ $? -eq 0 ]; then vcs2018_suc2=1; else vcs2018_suc2=0; fi
	export VCS_HOME=/export/pfs/edatools/synopsys/vcs-mx_vO-2018.09-SP2/vcs-mx/O-2018.09-SP2/linux64
	export VCS_HOME=/export/pfs/edatools/synopsys/vcs-mx_vO-2018.09-SP2/vcs-mx/O-2018.09-SP2
	if [ $? -eq 0 ]; then vcs2018_suc3=1; else vcs2018_suc3=0; fi
	if [[ $vcs2018_suc1 && $vcs2018_suc2 && $vcs2018_suc3 && 1 ]]; then 
		echo -e "Change vcs version to vcs-mx_vO-2018.09-SP2 successfully. "
	else
		echo -e "Change vcs version to vcs-mx_vO-2018.09-SP2 failed. "
	fi
	echo -e "If you have some errors you cannot resolve, you can try to reopen the node."
}
vcs2016()
{
	if [ -z $PATH_bak ] ; then
		PATH_bak=$PATH
	fi
	if [ -z $LD_LIBRARY_PATH_bak ] ; then
		LD_LIBRARY_PATH_bak=$LD_LIBRARY_PATH
	fi
	export PATH=$(echo $PATH | sed '1i /export/pfs/edatools/synopsys/VCS_vL-2016.06-SP2/bin:/export/pfs/edatools/synopsys/VCS_vL-2016.06-SP2/linux64/bin:')
	if [ $? -eq 0 ]; then vcs2016_suc1=1; else vcs2016_suc1=0; fi
	export LD_LIBRARY_PATH=$(echo $LD_LIBRARY_PATH | sed '1i /export/pfs/edatools/synopsys/VCS_vL-2016.06-SP2/linux64/lib:/export/pfs/edatools/synopsys/VCS_vL-2016.06-SP2/amd64/lib:')
	if [ $? -eq 0 ]; then vcs2016_suc2=1; else vcs2016_suc2=0; fi
	export VCS_HOME=/export/pfs/edatools/synopsys/VCS_vL-2016.06-SP2
	if [ $? -eq 0 ]; then vcs2016_suc3=1; else vcs2016_suc3=0; fi
	export VCS_BITMODE=64
	if [[ $vcs2016_suc1 && $vcs2016_suc2 && $vcs2016_suc3 && 1 ]]; then 
		echo -e "Change vcs version to VCS_vL-2016.06-SP2 successfully. "
	else
		echo -e "Change vcs version to VCS_vL-2016.06-SP2 failed. "
	fi
	echo -e "If you have some errors you cannot resolve, you can try to reopen the node."
}
restore_mybashrc()
{
	if [[ ! -z $PATH_bak ]] && [[ ! -z $LD_LIBRARY_PATH ]] ; then
		export PATH=$PATH_bak
		if [ $? -eq 0 ]; then path_suc=1; else path_suc=0; fi
		export LD_LIBRARY_PATH=$LD_LIBRARY_PATH_bak
		if [ $? -eq 0 ]; then ld_path_suc=1; else ld_path_suc=0; fi
		. ~/.bashrc
		if [ $? -eq 0 ]; then bash_suc=1; else bash_suc=0; fi
		if [[ $path_suc && $ld_path_suc && $bash_suc && 1 ]]; then 
			echo -e "Restore to yourself bashrc successfully. "
			echo -e "If you have some errors you cannot resolve, you can try to reopen the node."
		else
			echo -e "Restore to yourself bashrc failed. "
		fi
	else
		echo -e "Restore failed. Your current bashrc is yourself bashrc.\nIf you have some errors you cannot resolve, you can try to reopen the node. "
	fi
}
## Change VCS end ##


