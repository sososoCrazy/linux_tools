################################################################
#   > File Name     : tools_help.sh
#   > Author        : gsj
#   > mail          : guosj.so@gmail.com
#   > Created Time  : 2020.01.07 16:56
################################################################
#!/bin/sh
echo

## Tree
echo -e "\e[1;33mTree:\e[0m 
tree1 = 'tree -L 1'
tree2 = 'tree -L 2'
tree3 = 'tree -L 3'
tree4 = 'tree -L 4'
"

## screen
echo -e "\e[1;33mscreen:\e[0m 
scn  = 'screen'
scs xxx     : Creat a screen named xxx .
ctrl+a+d    : Back to your shell.
scls        : View your screen id.
scr xxx(id) : Reenter your previous screen.
sck xxx(id) : Kill your previous screen.
"

## du
echo -e "\e[1;33mdu:\e[0m 
du1   : du -hd1
du2   : du -hd2
dulog : du -hd1 to a log , and auto open through gvim.
"

## tar or Uploads and downloads
echo -e "\e[1;33mtar or Uploads and downloads:\e[0m 
ys xxx  : tar xxx to xxx.tar.gz .
jy xxx  : untar xxx .
xz      : 'sz' , downloads.
sc      : 'rz' , uploads.
"

## Creat project
echo -e "\e[1;33mCreat project:\e[0m 
mksyn *** : Creat a project file with flow (vcs,dve,verdi,dc,formal,ptpx,spyglass) scripts.
"

## Auto creat list
echo -e "\e[1;33mAuto creat list:\e[0m 
list ./xxx *.xxx   : Creat a new filelist of *.xxx in ./xxx .
list_a ./xxx *.xxx : Add filelist of *.xxx in ./xxx into ./filelist.
"

## remove ^M
echo -e "\e[1;33mremove ^M:\e[0m 
qdm xxxx.xxx : Remove ^M in file 'xxxx.xxx'.
qdml *.xxx   : Remove ^M in all files  '*.xxx'   in './' .
"

## dos2unix
echo -e "\e[1;33mdos2unix:\e[0m 
dos2unix xxx : Change ^M to /n in xxx. I guess.
"

## Trash
sh ~/.tools/trash/rmhelp.sh

## vcs_version_controller
sh ~/.tools/version_controller/vcs_version_help.sh

