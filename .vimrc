""
""	Author: Joseph Yu
""	Last Modified: 2015/1/30
""

"" coding settings
set autoindent
set complete+=k,d
set completeopt+=preview,menuone,menu,longest
" turn on omni completion
filetype plugin on
set omnifunc=syntaxcomplete#Complete
set number
set showfulltag
set tags+=~/.vim/tags/cpptags
set tags+=~/.vim/tags/gltags
set tags+=~/.vim/tags/opencvtags

"" buffer settings
set autoread
set backupdir=.,~/.vimtmp,.
set confirm
set cscopepathcomp=2
set directory=.,~/.vimtmp,.
set hidden
set icon
set iconstring=vim
set nowritebackup

"" editing settings
set altkeymap
set ambiwidth=double
set backspace=indent,eol,start
set clipboard=unnamedplus
set cursorcolumn
set cursorline
" set dictionary=~/.vim/dictionary/cdictionary
set encoding=utf-8
" set expandtab
set ignorecase
set incsearch
set linebreak
set shiftround
set shiftwidth=4
set showbreak=+++\ 
set smartcase
set softtabstop=4
set tabstop=4
set timeoutlen=1000 ttimeoutlen=0
set whichwrap+=<,>,b,s,[,],~
set wrap

"" window settings
set cmdheight=2
set cmdwinheight=6
" set columns=100
" set lines=36
set fillchars=stl:\ 
set fillchars=stlnc:\\
set langmenu=en_US.UTF-8
set laststatus=2
" gives the number of lines that is checked for set commands. 
set modeline
set modelines=30
set pumheight=6
set report=2
set ruler
set showcmd
set noshowmode
set showtabline=2
set scroll=2
set splitright
set tabpagemax=20
set title
set warn

"" GUI settings
set guifont=Ubuntu\ Mono\ 15

let mapleader=","

"" custom key mappings
" Bad Habits
noremap  <Up>    <Esc>
noremap  <Down>  <Esc>
noremap  <Left>  <Esc>
noremap  <Right> <Esc>
inoremap <Up>    <Esc>
inoremap <Down>  <Esc>
inoremap <Left>  <Esc>
inoremap <Right> <Esc>

" copy, cut, paste, save
inoremap	<C-c>	<Esc>yy
inoremap	<C-x>	<Esc>cc
inoremap	<C-v>	<Esc>pi

"" typo
command	WQ	wq
command	Wq	wq
command	W	w
command	Q	q
noremap		L	l
noremap		K	k
noremap		J	j
noremap		H	h

"" moving between splits
nnoremap	<C-H>	<C-W><C-H>
nnoremap	<C-J>	<C-W><C-J>
nnoremap	<C-K>	<C-W><C-K>
nnoremap	<C-L>	<C-W><C-L>

"" Tab switching
nmap	<leader>1	1gt
nmap	<leader>2	2gt
nmap	<leader>3	3gt
nmap	<leader>4	4gt
nmap	<leader>5	5gt
nmap	<leader>6	6gt
nmap	<leader>7	7gt
nmap	<leader>8	8gt
nmap	<leader>9	9gt

"" bracket completion
"inoremap	{ {}<Esc>i
"inoremap	( ()<Esc>i
"inoremap	[ []<Esc>i
"inoremap	" ""<Esc>i
"inoremap	' ''<Esc>i
"" end line semicolon ;
autocmd		FileType	c		nnoremap ; $a;
autocmd		FileType	cpp		nnoremap ; $a;
autocmd		FileType	java	inoremap ; $a;
"" jump window
inoremap	<C-]>	<Esc><C-W><C-]>
inoremap	<C-F>	<Esc><C-W><C-F>

"" install pathogen
execut pathogen#infect()

"" color settings
set background=dark
syntax enable
syntax on
colorscheme kiddo

" Macros
nmap	<F1>	:NERDTree<CR>
nmap	<F2>	:set columns=999<CR>:set lines=46<CR>
nmap	<F3>	:NERDTreeToggle .<CR>
nmap	<F4>	:OpenBrowser http://google.com/

nmap	<leader><space>		:Tabularize / <CR>
nmap	<leader>"			:Tabularize /"[^"]*"<CR>
nmap	<leader>(			:Tabularize /(.*)<CR>

""	syntastic settings
set statusline+=%#warningmsg#
set statusline+=%{SyntasticStatuslineFlag()}
set statusline+=%*

autocmd VimEnter * :SyntasticToggleMode
autocmd	BufWritePost * :SyntasticCheck

" autocomplpop settings
let g:AutoComplPop_Behavior = {
\	'c': [ {'command' : "\<C-x>\<C-o>",
\	'pattern' : ".", 'repeat' : 0}]}
let g:AutoComplPop_CompleteoptPreview = 1

" OmniCppComplete
let OmniCpp_NamespaceSearch = 2
let OmniCpp_GlobalScopeSearch = 1
let OmniCpp_ShowScopeInAbbr = 1
let OmniCpp_ShowAccess = 1
let OmniCpp_ShowPrototypeInAbbr = 1 " show function parameters
let OmniCpp_MayCompleteDot = 1 " autocomplete after .
let OmniCpp_MayCompleteArrow = 1 " autocomplete after ->
let OmniCpp_MayCompleteScope = 1 " autocomplete after ::
let OmniCpp_DefaultNamespaces = ["std", "_GLIBCXX_STD"]
let OmniCpp_SelectFirstItem = 2
let OmniCpp_LocalSearchDecl = 1
" automatically open and close the popup menu / preview window
au CursorMovedI,InsertLeave * if pumvisible() == 0|silent! pclose|endif

let g:AutoClosePairs_add = "[] '' "
let g:AutoClosePreserveDotReg = 0

