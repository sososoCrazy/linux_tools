#########################################################################
#   > File Name:     du.sh
#   > Author:        gsj
#   > mail:          guosj.so@gmail.com
#   > Created Time:  2019.12.03 16:28
#########################################################################
#!/bin/sh

whoami=`whoami`
pwdd=`pwd`
source ~/.scripts/du/du_hd1.sh > ~/.scripts/du/log/${whoami}.log && gvim ~/.scripts/du/log/${whoami}.log &
