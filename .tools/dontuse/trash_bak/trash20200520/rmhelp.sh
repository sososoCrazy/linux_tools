# ----------------------------------------------------------------------------
# File Name     : rmhelp.sh
# Author        : gsj
# E-MAIL        : guosijia@sylincom.com
# Created Date  : 2019.12.13
# ----------------------------------------------------------------------------
# Version       : 20200509
# Modified Date : 2020.05.09
# Modified by   : gsj   guosijia@sylincom.com
# ----------------------------------------------------------------------------
# others        :
# ----------------------------------------------------------------------------
#!/bin/sh

echo -e "
  ############ redifined \e[1;33mrm help\e[0m ######################################################
  #                                                                                   #
  #   trash_path  = ~/.trash                                                          #
  #   1.\e[1;32mrmnt **** \e[0m: \e[1;37mThe same as rm before redefined it.       \e[0m                        #
  #     \e[1;35mrmnt -rf * (now) = rm -rf * (previous).        \e[0m                               # 
  #   2.\e[1;32mrm  ****  \e[0m: \e[1;37mmv **** to trash_path.                    \e[0m                        #
  #   3.\e[1;32mrmls      \e[0m: \e[1;37mls trash_path.                            \e[0m                        #
  #   4.\e[1;32mrmll      \e[0m: \e[1;37mll trash_path using tree. 强烈建议使用！          \e[0m                #
  #   5.\e[1;32mrmdu      \e[0m: \e[1;37mDisplays the size of trash.               \e[0m                        #
  #   6.\e[1;32munrm      \e[0m: \e[1;37mRestore the file which rm just now .      \e[0m                        #
  #   7.\e[1;32munrm **** \e[0m: \e[1;37mRestore **** .  强烈建议配合 rmll 使用！          \e[0m                #
  #     If error, try to find whether there is a duplicate file.              \e[0m        #
  #   8.\e[1;32mmy_trash  \e[0m: \e[1;37mEnter your trash_path.                    \e[0m                        #
  #   9.\e[1;32mrmtrash   \e[0m: \e[1;37mClear the trash_path.                     \e[0m                        #
  #     If error, try to find whether the file has opened by yourself before.       \e[0m  #
  #  10.\e[1;32mrmupdate  \e[0m: \e[1;37mDisplays detailed updates.                \e[0m                        #
  #  11.\e[1;32mrmversion \e[0m: \e[1;37mDisplays the version of your trash scripts.        \e[0m               #
  #  12.\e[1;32mrmps      \e[0m: \e[1;37m显示用户在当前节点的所有进程。                        \e[0m            #
  #  13.\e[1;32mrmkill    \e[0m: \e[1;37m杀掉用户在当前节点所有进程。(注意：会强制断开所有当前节点！)      \e[0m#
  #    \e[1;35m例：在node30上rmkill，则会断开所有已连接的node30，并杀掉自己在node30所有进程。 \e[0m#
  #                                                                           \e[0m        #
  #####################################################################################
"


#随缘更新，随用随更新，欢迎提出建议。
#更新细节：


#2019.12.20  第一次更新记录
#1、添加 rmnt （rmnotrash），和未改回收站之前的 rm 功能完全一致；
#2、添加 rmdu ，查看当前回收站已用大小；
#3、添加 my_trash ，直接进入自己的回收站；
#4、优化 unrm ，同时 支持 直接恢复上一次删除的目录 或 恢复指定的目录 到当前路径；
#5、修复 bug ：rm 在删除同名文件到回收站时，会报错的问题；
#6、添加 rmupdate ,查看详细更新信息。
#其他具体操作请见 rmhelp。


#2019.12.31 本年度最后一次更新
#1、修改 rm 删除命令中 文件冲突 问题解决的算法逻辑，不再报错，更加实用；
#2、优化 unrm 函数中if的控制条件[]括号重复的现象；
#3、优化 rmupdate ，可以通过该命令查看 trash.sh 源代码。
#已知问题：
#1、unrm 恢复文件时候，如果要恢复到的目录中有重名文件，会提示是否覆盖。选择n（no）不覆盖时，mv命令停止，但是还会提示 恢复成功 （Restore success）。
#   虽然提示恢复成功，但是文件没有覆盖，放心使用。
#   若有疑问，可以使用 rmupdate 查看源代码 trash 函数。

#其他具体细节请见 rmupdate。


#2020.01.15 本年度第一次更新
#1、优化 unrm 逻辑，恢复文件的检测条件变为输入字符串是否非空；
#2、优化 rm unrm 等的操作提示，将路径中的 /export/pfs/home/lte_xxx/`whoami`/ 变为 ~ ，更加简洁明了。


#2020.01.17 重磅更新 - 按日期分类 - 自动删除旧文件
#1、优化 rm 删除文件算法，支持按照删除日期对回收站中的文件进行分类，按照每个文件的删除日期为分类标准。同一天删除的文件会被放在回收站中同一个目录中。命名格式：日-月_年。
#2、添加 rmll 指令，以 tree 的方式显示回收站中的目录。这样显示每个日期分类目录会更加方便。默认展开两层。
#3、优化 rm 算法，添加自动删除 7 天之前删除到回收站的文件的指令。（直接删除当天对应的日期目录。比如今天是 01-17_2020，那么会删除 01-10_2020 之前的目录。）
#   删除多长时间前的旧文件可自行定义，修改 trash.sh 中的 auto_rm_date 变量即可实现。
#4、修复 unrm 无论是否恢复成功，都提示“操作成功”的 bug 。再也不会出现文件未恢复，但提示 restore success 的现象。
#5、添加 beta 测试开发版trash，想体验新功能或随时跟进更新的可以自行添加测试版：~guosijia/.tools/trash/trash_beta.sh
#6、旧版本 trash 为 ~guosijia/.tools/trash/trash_no_date.sh ，未添加日期分类和自动删除的版本，喜欢旧版本的可以使用这个版本。


#2020.01.19 小更新
#1、优化 rm 删除分类中的时间显示格式，从 日-月_年 修改为 日-月-年 。
#2、修改 自动删除回收站旧文件 的旧文件判定时间，从原来的 7 天修改为 5 天，也就是说现在会自动删除 5 天之前放在回收站的旧文件。


#2020.01.21 发现小bug
#1、每次在重新登录节点或打开新节点的时候，都会自动生成一个名为 1 的文件。来自 trash.sh 的 165 行。不知如何解决。

#2020.01.21 解决小bug
#1、优化 自动删除 运行指令的位置，将其从单独脚本拿出来，放到了 trash.sh 中，这样再次运行时就不会生成 0 或 1 的文件。

#2020.02.10 不是更新
#今天在家办公。新型冠状病毒的影响，要在家隔离14天才可以去公司上班。
#1、删除旧文件的判定时间从 5 天改为 7 天。

#2020.03.10 更新
#1、优化 自动删除 的循环判断条件，从for循环变为 “while true”。
#2、优化 rm 删除逻辑，将文件统一移动到回收站变为从列表中逐一删除、逐一提示，优化删除不同文件时，部分文件删除成功部分文件删除失败时只会提示删除失败的现象。
#建议重启节点以应用更新。

#2020.03.27 更新 自动更新
#1、添加 自动更新 功能，如果有人习惯将脚本拷到本地使用，可以自动更新云服务器上的脚本到本地。
#注:启用自动更新需要先执行："cp -rf /export/pfs/home/lte_soc/guosijia/.tools/trash ~/.tools/", 然后将 bashrc 中改为 ". ~/.tools/trash/trash.sh"。
#2、修改 自动删除回收站旧文件 的旧文件判定时间，从原来的 7 天修改为 3 天，减少由于空间不足而需要手动删除回收站的情况。
#3、添加 rmversion 指令，用于显示当前 trash 脚本的版本号。

#2020.04.07 更新 修复错误提示
#1、优化 删除错误 提示内容。当删除带有空格的名字的文件/目录时，rm 会报错，目前我不会修复，所以只能更改一下错误提示，当出现这种错误的时候，会提示你用 'rmnt -rf 你刚刚输入的内容'，这里会自动把你刚刚输入的内容中空格部分自动用'\ '代替，这样再用原始的 rm 时就不会报错。

#2020.04.07 今天第二次更新
#1、优化 删除错误 提示内容。之前更新，当出现删除多个文件的时候，会出现误报的情况。因此再次更改提示。

#2020.05.19 后台进程问题
#1、无意间发现问题：运行ps，发现此脚本在当前节点中打开多次的时候，会有过多的sleep进程，导致当前节点中有一大串当前用户的进程。(主动断开节点时，进程会自动关掉。只有当异常断开节点时进程才会保留。)
#   能力有限，不会做后台的限制，因此加入两条指令：
#   rmps：显示当前用户在当前节点所有进程。
#   rmkill：杀掉当前用户在当前节点所有进程。（注意：会导致所有当前节点强制断开！）
#更多详情，请使用 rmhelp 查看。
