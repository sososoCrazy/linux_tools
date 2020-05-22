" set mapleader
let mapleader = ' '

" 映射切换buffer的键位
nnoremap [b :bp<CR>
nnoremap ]b :bn<CR>
" 映射<leader>num到num buffer
map <leader>1 :b 1<CR>
map <leader>2 :b 2<CR>
map <leader>3 :b 3<CR>
map <leader>4 :b 4<CR>
map <leader>5 :b 5<CR>
map <leader>6 :b 6<CR>
map <leader>7 :b 7<CR>
map <leader>8 :b 8<CR>
map <leader>9 :b 9<CR>

" Change buffers
map <leader>` :bp<CR>
map <leader><Tab> :bn<CR>

" ex
map <leader>v :Vex<CR>
map <leader>e :Ex<CR>

" diff
map <leader>f :diffthis<CR>
map <leader>g :diffoff<CR>

" 关闭NERDTree快捷键
map <leader>t :NERDTreeToggle<CR>


" maps
"NERDTree 配置:F2快捷键显示当前目录树
map <F2> :NERDTreeToggle<CR>
"map <F2> :Vex<CR>
map <F3> :Vex<CR>

map <F4> ,ig

map <F9> <Esc>:vertical resize +5<CR>

map <k1> :set syn=verilog_systemverilog<CR>
map <k2> :set syn=sdc<CR>
map <k3> :set syn=tcl<CR>
map <k4> :set syn=asm<CR>
map <k5> :set syn=<CR>
map <k6> :set syn=sh<CR>

map <k8> :noh<CR>
map <k9> :noh<CR>

map <leader>w :w!<CR>
map <leader>q :q<CR>

" Ctrl+a  
nmap <silent> <C-a> ggvG$

" 选中状态下 Ctrl+c 复制
vmap <C-c> "+y

"自动补全
":inoremap ( ()<ESC>i
":inoremap ) <c-r>=ClosePair(')')<CR>
"":inoremap { {<CR>}<ESC>O
"":inoremap } <c-r>=ClosePair('}')<CR>
":inoremap [ []<ESC>i
":inoremap ] <c-r>=ClosePair(']')<CR>
":inoremap " ""<ESC>i
":inoremap ' ''<ESC>i
"map <F9> :vertical resize + 5<CR>
"map <PageUp>  :bp<CR>
"map <PageDown> :bn<CR>



