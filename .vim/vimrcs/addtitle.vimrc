"addtitle

map <F5> :call SetTitle()<cr>'s
autocmd BufNewFile *.v,*.sv,*.cpp,*.[ch],*.sh,*.tcl,*.java,*.txt exec ":call SetTitle()" 
func SetTitle() 
	if &filetype == 'sh' 
		call append(0,  "# ----------------------------------------------------------------------------") 
		call append(1,  "# File Name     : ".expand("%:t")) 
		call append(2,  "# Author        : gsj") 
		call append(3,  "# E-MAIL        : guosijia@sylincom.com") 
		call append(4,  "# Created Date  : ".strftime("%Y.%m.%d")) 
		call append(5,  "# ----------------------------------------------------------------------------") 
		call append(6,  "# Version       : ".strftime("%Y%m%d")) 
		call append(7,  "# Modified Date : ".strftime("%Y.%m.%d")) 
		call append(8,  "# Modified by   : gsj   guosijia@sylincom.com") 
		call append(9,  "# ----------------------------------------------------------------------------") 
		call append(10, "# others        :") 
		call append(11, "# ----------------------------------------------------------------------------") 
		call append(12, "#!/bin/sh")
		call append(13, "")
		autocmd BufNewFile * normal G

	elseif &filetype == 'tcl' 
		call append(0,  "# ----------------------------------------------------------------------------") 
		call append(1,  "# File Name     : ".expand("%")) 
		call append(2,  "# Author        : gsj") 
		call append(3,  "# E-MAIL        : guosijia@sylincom.com") 
		call append(4,  "# Created Date  : ".strftime("%Y.%m.%d")) 
		call append(5,  "# ----------------------------------------------------------------------------") 
		call append(6,  "# Version       : ".strftime("%Y%m%d")) 
		call append(7,  "# Modified Date : ".strftime("%Y.%m.%d")) 
		call append(8,  "# Modified by   : gsj   guosijia@sylincom.com") 
		call append(9,  "# ----------------------------------------------------------------------------") 
		call append(10, "# others        :") 
		call append(11, "# ----------------------------------------------------------------------------") 
		call append(12, "#!/bin/tclsh")
		call append(13, "")
		autocmd BufNewFile * normal G

	elseif &filetype == 'c'
		call append(0,  "// ----------------------------------------------------------------------------") 
		call append(1,  "// File Name     : ".expand("%")) 
		call append(2,  "// Author        : gsj") 
		call append(3,  "// E-MAIL        : guosijia@sylincom.com") 
		call append(4,  "// Created Date  : ".strftime("%Y.%m.%d")) 
		call append(5,  "// ----------------------------------------------------------------------------") 
		call append(6,  "// Version       : ".strftime("%Y%m%d")) 
		call append(7,  "// Modified Date : ".strftime("%Y.%m.%d")) 
		call append(8,  "// Modified by   : gsj   guosijia@sylincom.com") 
		call append(9,  "// ----------------------------------------------------------------------------") 
		call append(10, "// others        :") 
		call append(11, "// ----------------------------------------------------------------------------") 
		call append(12, "")
		call append(13, "#include <stdio.h>")
		call append(14, "#include <stdlib.h>")
		call append(15, "#include <string.h>")
		call append(16, "#include <ctype.h>")
		call append(17, "")
		call append(18, "int main()")
		call append(19, "{")
		call append(20, "	")
		call append(21, "}")
		autocmd BufNewFile * normal G

	else 
		call append(0,  "// ----------------------------------------------------------------------------") 
		call append(1,  "// File Name     : ".expand("%")) 
		call append(2,  "// Author        : gsj") 
		call append(3,  "// E-MAIL        : guosijia@sylincom.com") 
		call append(4,  "// Created Date  : ".strftime("%Y.%m.%d")) 
		call append(5,  "// ----------------------------------------------------------------------------") 
		call append(6,  "// Version       : ".strftime("%Y%m%d")) 
		call append(7,  "// Modified Date : ".strftime("%Y.%m.%d")) 
		call append(8,  "// Modified by   : gsj   guosijia@sylincom.com") 
		call append(9,  "// ----------------------------------------------------------------------------") 
		call append(10, "// others        :") 
		call append(11, "// ----------------------------------------------------------------------------") 
		call append(12, "")
		autocmd BufNewFile * normal G
	endif	

	autocmd BufNewFile * normal G
	echohl WarningMsg | echo "Successful in adding the copyright." | echohl None
	"autocmd BufNewFile * G
endfunc













"map <> :call AddTitle_v()<cr>'s
"map <F7> :call AddTitle_v()<cr>'s
"function AddTitle_v()
"	call append(0,"/*==============================================================")
"	call append(1,"    > Filename      : ".expand("%:t"))
"	call append(2,"    > Author        : gsj")
"	call append(3,"    > Mail          : guosijia@sylincom.com")
"	call append(4,"    > Created Time  : ".strftime("%Y.%m.%d %H:%M"))
"	call append(5,"===============================================================*/")
"	call append(6,"")
"	"call append(7,"")
"	echohl WarningMsg | echo "Successful in adding the copyright." | echohl None
"	"echohl None
"endfunction
"
"
"map <F6> :call AddTitle_sh()<cr>'s
"function AddTitle_sh()
"	call append(0,"################################################################")
"	call append(1,"#   > Filename      : ".expand("%:t"))
"	call append(2,"#   > Author        : gsj")
"	call append(3,"#   > Mail          : guosijia@sylincom.com")
"	call append(4,"#   > Created Time  : ".strftime("%Y.%m.%d %H:%M"))
"	call append(5,"################################################################")
"	call append(6,"#!/bin/sh")
"	call append(7,"")
"	echohl WarningMsg | echo "Successful in adding the copyright." | echohl None
"endfunction



"" F5 TitleDet
"map <F5> :call SetTitle()<cr>'s
""新建.c,.h,.sh,.java文件，自动插入文件头 
"autocmd BufNewFile *.v,*.sv,*.cpp,*.[ch],*.sh,*.tcl,*.java,*.txt exec ":call SetTitle()" 
"""定义函数SetTitle，自动插入文件头 
"func SetTitle() 
"	"如果文件类型为.sh文件 
"	if &filetype == 'sh' 
"		call setline(1, "#########################################################################") 
"		call append(line("."),   "#   > File Name:     ".expand("%")) 
"		call append(line(".")+1, "#   > Author:        gsj") 
"		call append(line(".")+2, "#   > Mail:          guosijia@sylincom.com") 
"		call append(line(".")+3, "#   > Created Time:  ".strftime("%Y.%m.%d %H:%M")) 
"		call append(line(".")+4, "#########################################################################") 
"		call append(line(".")+5, "#!/bin/sh")
"		call append(line(".")+6, "")
"		autocmd BufNewFile * normal G
"		"call append(line(".")+6, "PATH=/home/edison/bin:/home/edison/.local/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/games:/usr/local/games:/snap/bin:/work/tools/gcc-3.4.5-glibc-2.3.6/bin")
"		"call append(line(".")+7, "export PATH")
"	elseif &filetype == 'tcl' 
"		call setline(1, "#########################################################################") 
"		call append(line("."),   "#   > File Name:     ".expand("%")) 
"		call append(line(".")+1, "#   > Author:        gsj") 
"		call append(line(".")+2, "#   > mail:          guosijia@sylincom.com") 
"		call append(line(".")+3, "#   > Created Time:  ".strftime("%Y.%m.%d %H:%M")) 
"		call append(line(".")+4, "#########################################################################") 
"		call append(line(".")+5, "#!/usr/bin/tclsh")
"		call append(line(".")+6, "")
"		autocmd BufNewFile * normal G
"	else 
"		call setline(1, "/*************************************************************************") 
"		call append(line("."), "	> File Name:     ".expand("%")) 
"		call append(line(".")+1, "	> Author:        gsj") 
"		call append(line(".")+2, "	> Mail:          guosijia@sylincom.com ") 
"		call append(line(".")+3, "	> Created Time:  ".strftime("%Y.%m.%d %H:%M")) 
"		call append(line(".")+4, " ************************************************************************/") 
"		call append(line(".")+5, "")
"	endif	
"	
"	if &filetype == 'cpp'
"		call append(line(".")+6, "#include<iostream>")
"    	call append(line(".")+7, "using namespace std;")
"		call append(line(".")+8, "")
"	endif
"	if &filetype == 'c'
"		call append(line(".")+6, "#include<stdio.h>")
"		call append(line(".")+7, "")
"	endif
"	if &filetype == 'v'
"		call append(line(".")+6, "")
"		call append(line(".")+7, "idgfdgfdhfdfh")
"		autocmd BufNewFile * normal G
"	endif
"	"	if &filetype == 'java'
"	"		call append(line(".")+6,"public class ".expand("%"))
"	"		call append(line(".")+7,"")
"	"	endif
"	"新建文件后，自动定位到文件末尾
"	autocmd BufNewFile * normal G
"	echohl WarningMsg | echo "Successful in adding the copyright." | echohl None
"	"autocmd BufNewFile * G
"endfunc





"" F5 TitleDet
"map <F5> :call SetTitle()<cr>'s
""新建.c,.h,.sh,.java文件，自动插入文件头 
"autocmd BufNewFile *.v,*.sv,*.cpp,*.[ch],*.sh,*.tcl,*.java,*.txt exec ":call SetTitle()" 
"""定义函数SetTitle，自动插入文件头 
"func SetTitle() 
"	if &filetype == 'sh' 
"		call append(0, "################################################################") 
"		call append(1, "#   > File Name     : ".expand("%")) 
"		call append(2, "#   > Author        : gsj") 
"		call append(3, "#   > mail          : guosijia@sylincom.com") 
"		call append(4, "#   > Created Time  : ".strftime("%Y.%m.%d %H:%M")) 
"		call append(5, "################################################################") 
"		call append(6, "#!/bin/sh")
"		call append(7, "")
"		autocmd BufNewFile * normal G
"
"	elseif &filetype == 'tcl' 
"		call append(0, "################################################################") 
"		call append(1, "#   > File Name     : ".expand("%")) 
"		call append(2, "#   > Author        : gsj") 
"		call append(3, "#   > mail          : guosijia@sylincom.com") 
"		call append(4, "#   > Created Time  : ".strftime("%Y.%m.%d %H:%M")) 
"		call append(5, "################################################################") 
"		call append(6, "#!/usr/bin/tclsh")
"		call append(7, "")
"		autocmd BufNewFile * normal G
"
"	else 
"		call append(0, "/***************************************************************") 
"		call append(1, "	> File Name     : ".expand("%")) 
"		call append(2, "	> Author        : gsj") 
"		call append(3, "	> Mail          : guosijia@sylincom.com ") 
"		call append(4, "	> Created Time  : ".strftime("%Y.%m.%d %H:%M")) 
"		call append(5, " **************************************************************/") 
"		call append(6, "")
"	endif	
"	
"	if &filetype == 'cpp'
"		call append(line(".")+6, "#include<iostream>")
"    	call append(line(".")+7, "using namespace std;")
"		call append(line(".")+8, "")
"	endif
"	if &filetype == 'c'
"		call append(line(".")+6, "#include<stdio.h>")
"		call append(line(".")+7, "")
"	endif
"	if &filetype == 'v'
"		call append(line(".")+6, "")
"		call append(line(".")+7, "idgfdgfdhfdfh")
"		autocmd BufNewFile * normal G
"	endif
"	"	if &filetype == 'java'
"	"		call append(line(".")+6,"public class ".expand("%"))
"	"		call append(line(".")+7,"")
"	"	endif
"	"新建文件后，自动定位到文件末尾
"	autocmd BufNewFile * normal G
"	echohl WarningMsg | echo "Successful in adding the copyright." | echohl None
"	"autocmd BufNewFile * G
"endfunc




" F5 TitleDet

