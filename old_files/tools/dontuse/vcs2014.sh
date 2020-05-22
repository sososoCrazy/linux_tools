################################################################
#   > File Name     : 1541.sh
#   > Author        : gsj
#   > mail          : guosijia@sylincom.com
#   > Created Time  : 2020.01.06 18:06
################################################################
#!/bin/sh




export PATH=$(echo $PATH | sed '1i /export/pfs/edatools/synopsys/vcs-mx_vJ-2014.12-SP1/bin:/export/pfs/edatools/synopsys/vcs-mx_vJ-2014.12-SP1/linux/bin:/export/pfs/edatools/synopsys/vcs-mx_vJ-2014.12-SP1/amd64/bin:')
export LD_LIBRARY_PATH=$(echo $LD_LIBRARY_PATH | sed '1i /export/pfs/edatools/synopsys/vcs-mx_vJ-2014.12-SP1/linux/lib:/export/pfs/edatools/synopsys/vcs-mx_vJ-2014.12-SP1/amd64/lib:')


#export PATH=$PATH:/export/pfs/edatools/synopsys/vcs-mx_vJ-2014.12-SP1/bin
#export PATH=$PATH:/export/pfs/edatools/synopsys/vcs-mx_vJ-2014.12-SP1/linux/bin
#export PATH=$PATH:/export/pfs/edatools/synopsys/vcs-mx_vJ-2014.12-SP1/amd64/bin
#export LD_LIBRARY_PATH=$LD_LIBRARY_PATH:/export/pfs/edatools/synopsys/vcs-mx_vJ-2014.12-SP1/linux/lib
#export LD_LIBRARY_PATH=$LD_LIBRARY_PATH:/export/pfs/edatools/synopsys/vcs-mx_vJ-2014.12-SP1/amd64/lib
export VCS_HOME=/export/pfs/edatools/synopsys/vcs-mx_vJ-2014.12-SP1
#
#export VCS_ARCH_OVERRIDE=linux
#export VCS_ENABLE_ASLR_SUPPORT=1 
#export VCS_PRINT_INITREG_INITIALIZATION=1









#export PATH=$(echo $PATH | sed 's/:\/export\/pfs\/edatools\/synopsys\/vcs\-mx\_\vO\-2018.09-SP2\/vcs\-mx/O\-2018\.09\-\SP2\/bin\:/g')
#
#export PATH=$(echo $PATH | sed 's/\:\/export\/pfs\/edatools\/synopsys\/vcs\-mx\_\v\O\-2018\.09\-SP2\/vcs\-mx\/O\-2018\.09\-SP2\/bin//g')
#export PATH=$(echo $PATH | sed '\:\/export\/pfs\/edatools\/synopsys\/vcs\-mx\_\v\O\-2018\.09\-SP2\/vcs\-mx\/O\-2018\.09\-SP2\/bin/d')
#
#export PATH=$(echo $PATH | sed 's/\/export\/pfs\/edatools\/synopsys\/vcs-mx_vO-2018.09-SP2\/vcs-mx/O-2018.09-SP2\/linux64\/bin/g')
#
#
#export LD_LIBRARY_PATH=$(echo $LD_LIBRARY_PATH | sed 's/\/export\/pfs\/edatools\/synopsys\/vcs-mx_vO-2018.09-SP2\/vcs-mx\/O-2018.09-SP2\/linux64\/lib/g')
#export LD_LIBRARY_PATH=$(echo $LD_LIBRARY_PATH | sed 's/\/export\/pfs\/edatools\/synopsys\/vcs-mx_vO-2018.09-SP2\/vcs-mx\/O-2018.09-SP2\/amd64\/lib/g')
#
#
#
#PATH_VCS2018=sed 's/\:\/export\/pfs\/edatools\/synopsys\/vcs\-mx\_\v\O\-2018\.09\-SP2\/vcs\-mx\/O\-2018\.09\-SP2\/bin/:/g' PATH_list
#export PATH=$PATH_VCS2018
