################################################################
#   > File Name     : vcs_version_help.sh
#   > Author        : gsj
#   > mail          : guosijia@sylincom.com
#   > Created Time  : 2020.01.07 16:18
################################################################
#!/bin/sh

echo -e "
  ############  \e[1;33mvcs_version_controller help\e[0m ########################################
  #                                                                                #
  #   1.\e[1;32mvcs2014 \e[0m: \e[1;37mChange vcs version to vcs-mx_vJ-2014.12-SP1.    \e[0m                 #
  #   2.\e[1;32mvcs2016 \e[0m: \e[1;37mChange vcs version to VCS_vL-2016.06-SP2.                  \e[0m      #
  #   3.\e[1;32mvcs2018 \e[0m: \e[1;37mChange vcs version to vcs-mx_vO-2018.09-SP2.         \e[0m            #
  #   4.\e[1;32mrestore_mybashrc \e[0m: \e[1;37mRestore to yourself bashrc.             \e[0m                #
  #   5.\e[1;32mvcs_version_help \e[0m: \e[1;37mView help instructions.                 \e[0m                #
  #   6.\e[1;32mvcs_version_controller_update \e[0m: \e[1;37mView the detailed code and update details.\e[0m #
  #   \e[1;35mIf you have some errors you cannot resolve, you can try to reopen the node.  \e[0m#
  #                                                                                #
  ##################################################################################
"


#随缘更新，随用随更新，欢迎提出建议。
#更新细节：

#2020.01.10
#第二次更新
#1、修改 export PATH= 的算法，从原始的采用 sed li 指令，改为 PATH=XXXX:$PATH ，$PATH加在后面可以实现同样功能。

#2020.01.07 15:47
#第一次更新
#1、添加 restore_mybashrc ，支持备份 PATH 变量，支持一键恢复自己的 bashrc 中软件版本。
#2、添加 更加直观的提示，出现错误提示直接重新开节点。
#3、优化 restore_mybashrc 算法，当备份为空时不再执行函数。
#4、添加 vcs_version_help , 便于查看命令用法。

#2020.01.07
#write by：gsj
