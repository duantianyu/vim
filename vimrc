
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => Vundle
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
set nocompatible              " be iMproved, required 必须
filetype off                  " required 必须

" set the runtime path to include Vundle and initialize 设置Vundle运行路径,不需要更改
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
" alternatively, pass a path where Vundle should install plugins 设置插件安装位置，不需要更改
" call vundle#begin('~/some/path/here')

" let Vundle manage Vundle, required 安装Vundel,必须
Plugin 'VundleVim/Vundle.vim'

" Plugins 其他插件
Plugin 'scrooloose/nerdtree'
Plugin 'Shougo/neocomplete.vim'
Plugin 'shawncplus/phpcomplete.vim'
Plugin 'vim-syntastic/syntastic'
Plugin 'ctrlpvim/ctrlp.vim'
Plugin 'vim-scripts/taglist.vim'

" All of your Plugins must be added before the following line 所有插件必须在上面添加完毕
call vundle#end()            " required 必须
filetype plugin indent on    " required 必须
" To ignore plugin indent changes, instead use:
"filetype plugin on
"
" Brief help 使用简介
" :PluginList       - lists configured plugins 列出所有插件
" :PluginInstall    - installs plugins; append `!` to update or just :PluginUpdate 安装插件，添加’!‘或使用:PluginUpdate更新
" :PluginSearch foo - searches for foo; append `!` to refresh local cache 搜索插件foo，添加’!‘更新本地缓存
" :PluginClean      - confirms removal of unused plugins; append `!` to auto-approve removal 确认删除插件，添加'!'自动确认删除
"
" see :h vundle for more details or wiki for FAQ 更多问题请查看帮助文档，命令:h vundel
" Put your non-Plugin stuff after this line 把非插件的设置写在下面



""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => General 常规设置
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Sets how many lines of history VIM has to remember 命令行储存行数
set history=1000

" Enable filetype plugins 开启插件
filetype plugin on
filetype indent on

" Set to auto read when a file is changed from the outside 自动加载外部修改
set autoread

" With a map leader it's possible to do extra key combinations 设置前缀键
" like <leader>w saves the current file 如前缀键+w保存当前文档
let start_period = ";"
let g:mapleader = ";"



""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => VIM user interface 界面设置
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Set 3 lines to the cursor - when moving vertically using j/k 当使用j/k时，当前行上下有3行
set so=3

" Ignore compiled files 忽略文件
set wildignore=*~,*.bak
set wildignore+=*/tmp/*,*.so,*.swp,*.zip,*.pyc,*.png,*.jpg,*.gif     " MacOSX/Linux
set wildignore+=*\\tmp\\*,*.swp,*.zip,*.exe,*.pyc,*.png,*.jpg,*.gif  " Windows

"Always show current position 显示标尺
set ruler

" Height of the command bar 命令行高度
set cmdheight=2

" Allow backspacing over everything in insert mode. Configure backspace so it acts as it should act 删除键删除所有字符
set backspace=eol,start,indent

" Allow specified keys that move the cursor left/right to move to the
" previous/next line when the cursor is on the first/last character in
" the line. 允许折行移动光标
set whichwrap+=<,>,[,]

" Ignore case when searching 搜索时忽略大小写
set ignorecase

" When searching try to be smart about cases 
" Override the 'ignorecase' option if the search pattern contains upper
" case characters.  Only used when the search pattern is typed and
" 'ignorecase' option is on. 当要搜索的字符有大写是，启用大小写匹配
set smartcase

" Highlight search results 高亮显示搜索结果
set hlsearch

" incremental searching 实时搜索
set incsearch

" Don't redraw while executing macros (good performance config) 在执行宏命令时，不进行显示重绘；在宏命令执行完成后，一次性重绘，以便提高性能
set lazyredraw

" Show matching brackets when text indicator is over them 插入右括号时会短暂地跳转到匹配的左括号
set showmatch

" How many tenths of a second to blink when matching brackets 跳转到匹配的左括号的时间
set mat=4

"Use {color} for the background 指定背景颜色
set background=dark

" Show line number 显示行号
set number

" Highlight the screen line of the cursor 突出当前行
set cursorline

" Show (partial) command in the last line of the screen 将输入的命令显示出来，便于查看当前输入的信息
set showcmd

" Show possible command matches 增强模式中的命令行自动完成操作
set wildmenu

" Shared clipboard 共享剪切板
set clipboard+=unnamed

" No beep 去除提示音
set novisualbell
set noerrorbells
set t_vb=
set tm=500

" colorscheme desert, syntax highlighting 开启语法高亮
syntax on 

" Encoding used for the terminal. 设置终端编码格式
set termencoding=utf-8
" Sets the character encoding used inside Vim. vim内部编码格式
set encoding=utf-8

" When you edit the HTML file, remove the underscore in the a tag 编辑html 文件时，去除a 标签中的下划线
let html_no_rendering=1

" Set language 设置帮助语言，多语言版有效
"set helplang=cn



""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => Files, backups and undo 文件备份
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Turn backup off, since most stuff is in SVN, git et.c anyway... 由于使用SVN，Git等工具，关掉文件备份
set nobackup
set writebackup
set noswapfile



""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => Text, tab and indent related 文档和tab键设置
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Use spaces instead of tabs 用空格替换tab
set expandtab

" Be smart when using tabs 根据文件中其他地方的缩进空格个数来确定一个tab 是多少空格
set smarttab

" 1 tab == 4 spaces 1 tab 等于4空格
set shiftwidth=4
set tabstop=4

" Linebreak on 500 characters 宽带超过500折行
set linebreak
set textwidth=500

" always set autoindenting on 是否自动缩排  不缩排:noautoindent
set autoindent

" Do smart autoindenting when starting a new line. 新行自动缩排
set smartindent

" This option changes how text is displayed.  It doesn't change the text
" in the buffer, see 'textwidth' for that. 自动折行
set wrap



""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => Visual mode related 可视模式设置
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Visual mode pressing * or # searches for the current selection 可视模式下 * 或 # 搜索当前选中的字符
vnoremap <silent> * :call VisualSelection('f')<cr>
vnoremap <silent> # :call VisualSelection('b')<cr>



""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => Moving around, tabs, windows and buffers 移动设置
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Return to last edit position when opening files (You want this!) 重新打开文档时跳转到上次编辑的位置
autocmd BufReadPost *
            \ if line("'\"") > 0 && line("'\"") <= line("$") |
            \   exe "normal! g`\"" |
            \ endif
" Remember info about open buffers on close 记录关闭文档时的信息
set viminfo^=%

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => Status line 状态栏
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" always have a status line 始终显示状态栏
set laststatus=2

" Format the status line 状态栏格式
set statusline=\ %{HasPaste()}%F\ %m%r%h\ %w\ Line:\ %l/%L\ %{&spelllang}\ %{''.(&fenc!=''?&fenc:&enc).''}\ %{(&bomb?\",BOM\":\"\")}%y%=%{v:register}

" Status line background 状态栏背景色
hi statusline ctermfg='6A5ACD'


""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => Editing mappings 键盘命令
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Remap VIM 0 to first non-blank character 命令0替换成^
map 0 ^

" Move a line of text using ALT+[jk] or Comamnd+[jk] on mac 向上向下移动当前行
nnoremap <leader>[ :m .-2<cr>==
nnoremap <leader>] :m .+1<cr>==
inoremap <leader>[ <Esc>:m .-2<cr>==gi
inoremap <leader>] <Esc>:m .+1<cr>==gi
vnoremap <leader>[ :m '<-2<cr>gv=gv
vnoremap <leader>] :m '>+1<cr>gv=gv

" Delete trailing white space on save, useful for Python and CoffeeScript ;) 删除末尾空格
func! DeleteTrailingWS()
    exe "normal mz"
    %s/\s\+$//ge
    exe "normal `z"
endfunc
autocmd BufWrite *.py :call DeleteTrailingWS()
autocmd BufWrite *.php :call DeleteTrailingWS()
autocmd BufWrite *.js :call DeleteTrailingWS()


""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => set paste / set nopaste 进入取消paste模式
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
map <leader>sp :set paste<cr>
map <leader>snp :set nopaste<cr>

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => Spell checking 拼写检查
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Pressing ,ss will toggle and untoggle spell checking
map <leader>ss :setlocal spell!<cr>

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => Misc 杂项
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Remove the Windows ^M - when the encodings gets messed up 去除windows的^M
noremap <Leader>m mmHmt:%s/<C-V><cr>//ge<cr>'tzt'm

" VIM automatic recursive lookup of tags 实现vim对tags的自动递归查找
set tags=tags;
" Automatic directory switching 表示自动切换目录
set autochdir

" Show model 是否要显示 --INSERT-- 之类的字眼在左下角的状态栏
set showmode

" In many terminal emulators the mouse works just fine, thus enable it 使用鼠标
if has('mouse')
    set mouse=a
endif

" Automatic completion () [] {} '' "" 自动补全
inoremap ( ()<ESC>i
inoremap ) <c-r>=ClosePair(')')<cr>
inoremap { {<cr>}<ESC>O
inoremap } <c-r>=ClosePair('}')<cr>
inoremap [ []<ESC>i
inoremap ] <c-r>=ClosePair(']')<cr>
inoremap " ""<ESC>i
inoremap ' ''<ESC>i



""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Plugin setting 插件设置
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" WinManager
" Set interface segmentation 设置界面分割
let g:winManagerWindowLayout='BufExplorer|TagList'
" Set the width of the winmanager 设置winmanager的宽度，默认为40
let g:winManagerWidth = 40
let g:defaultExplorer = 0


" Neocomplete
" Disable AutoComplPop
let g:acp_enableAtStartup = 0
" Use neocomplete.
let g:neocomplete#enable_at_startup = 1
" Use smartcase.
let g:neocomplete#enable_smart_case = 1
" Set minimum syntax keyword length.
let g:neocomplete#sources#syntax#min_keyword_length = 3

" Define keyword
if !exists('g:neocomplete#keyword_patterns')
    let g:neocomplete#keyword_patterns = {}
endif
let g:neocomplete#keyword_patterns['default'] = '\h\w*'

" Enable omni completion
autocmd FileType css setlocal omnifunc=csscomplete#CompleteCSS
autocmd FileType html,markdown setlocal omnifunc=htmlcomplete#CompleteTags
autocmd FileType javascript setlocal omnifunc=javascriptcomplete#CompleteJS
autocmd FileType python setlocal omnifunc=pythoncomplete#Complete
autocmd FileType xml setlocal omnifunc=xmlcomplete#CompleteTags


" vim-syntastic/syntastic 语法检测
set statusline+=%#warningmsg#
if has("SyntasticStatuslineFlag")
    set statusline+=%{SyntasticStatuslineFlag()}
endif
set statusline+=%*

let g:syntastic_always_populate_loc_list = 1
let g:syntastic_auto_loc_list = 1
let g:syntastic_check_on_open = 1
let g:syntastic_check_on_wq = 0


" Tlist 
"if &diff
"    let Tlist_Auto_Open=0 " don't auto open when compare two files 当对比文件时不打开Tlist
"else
"    let Tlist_Auto_Open=1 " auto pen Tlist when open a file 打开文件时自动打开Tlist
"endif

" Let taglist display a list of functions for multiple files at the same time 让taglist可以同时展示多个文件的函数列表
let Tlist_Show_One_File=1

" Quit vim when taglist is the last one  当taglist是最后一个分割窗口时，自动推出vim
let Tlist_Exit_OnlyWindow=1

" Set taglist window in right, delete the following line if you don't like 把Tlist设置在左边，如果不喜欢可以删除
let Tlist_Use_Left_Window=1
let Tlist_Auto_Update=1
let Tlist_File_Fold_Auto_Close=1

" Auto close Tlist when exiting file 当仅剩一个窗口时退出vim
let Tlist_Exit_OnlyWindow = 1


" NERDTree
" Put NERDTree windows on the right 把NERDTree设置在右边
let g:NERDTreeWinPos = "right"

" show bookmarks 显示bookmarks
let NERDTreeShowBookmarks=1

" Open second NerdTree when using: edit command 使用:edit命令时打开第二NerdTree 
let NERDTreeHijackNetrw=1
" Set width 设置宽度
let NERDTreeWinSize=35

" When there are no other files in VIM auto close the window 当vim中没有其他文件，值剩下nerdtree的时候，自动关闭窗口
autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTree") && b:NERDTree.isTabTree()) | q | endif



""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" quick map 快捷键
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" for NERDTreeFind
nmap ;n :NERDTreeFind<cr>

" add NERDTREE plugin for dir view on left window,making a shortcut here Ctrl+n=:NERDTreeToggle
nmap <C-n> :NERDTreeToggle<cr>

" Go to the next tab page 到下一个tab
nmap <leader>f gt
" Go to the previous tab page 到上一个tab
nmap <leader>b gT

" Command line enhancement 命令行模式下Ctrl+a光标移到首字母
cnoremap <C-a> <Home>

" Treat long lines as break lines (useful when moving around in them) 折行时可以正常使用j/k
map j gj
map k gk

" Smart way to move between windows 灵敏的转换窗口
map <C-j> <C-W>j
map <C-k> <C-W>k
map <C-h> <C-W>h
map <C-l> <C-W>l

" Useful mappings for managing tabs tabs切换
map tn :tabnew<cr>
map to :tabonly<cr>
map tc :tabclose<cr>
map tm :tabmove

" Opens a new tab with the current buffer's path 打开新tab
" Super useful when editing files in the same directory
map te :tabedit <c-r>=expand("%:p:h")<cr>/

" Tlist
nmap tl :Tlist<cr>

" Switch CWD to the directory of the open buffer 查看当前文档目录
map <leader>cd :cd %:p:h<cr>:pwd<cr>

" copy all 复制全部
map <C-a> ggVG$"+yG

" vimdiff 对比文件
nnoremap <leader>d :vert diffsplit

" map :w! 保存
nmap <leader>w :w!<cr>



""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => Helper functions 函数
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Returns true if paste mode is enabled 是否开启paste mode
function! HasPaste()
    if &paste
        return 'PASTE MODE  '
    en
    return ''
endfunction


function! ClosePair(char)
    if getline('.')[col('.') - 1] == a:char
        return "\<Right>"
    else
        return a:char
    endif
endfunction


