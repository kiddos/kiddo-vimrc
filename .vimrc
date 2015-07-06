""
""	Author: Joseph Yu
""	Last Modified: 2015/7/05
""

"" coding settings
set autoindent
set complete=.,w,b,u,U,t,k
set completeopt+=menuone,menu,preview
filetype indent plugin on
set number
set showfulltag
autocmd FileType c,cpp set tags+=~/.vim/tags/cpptags
autocmd FileType c,cpp set tags+=~/.vim/tags/gl
autocmd FileType c,cpp set tags+=~/.vim/tags/glut
autocmd FileType c,cpp set tags+=~/.vim/tags/glew
autocmd FileType c,cpp set tags+=~/.vim/tags/opencvtags

autocmd FileType php setl ofu=phpcomplete#CompletePHP
autocmd FileType ruby,eruby setl ofu=rubycomplete#Complete
autocmd FileType html,xhtml setl ofu=htmlcomplete#CompleteTags
autocmd FileType c setl ofu=ccomplete#CompleteCpp
autocmd FileType css setl ofu=csscomplete#CompleteCSSutocmd

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
set ignorecase
set incsearch
set linebreak
set shiftround
set shiftwidth=4
set showbreak=+++\
set smartcase
set softtabstop=4
set tabstop=4
autocmd FileType python set tabstop=8
autocmd FileType python set expandtab
autocmd FileType python set softtabstop=4
autocmd FileType python set shiftwidth=4
autocmd FileType python set modeline
set timeoutlen=1000 ttimeoutlen=0
set whichwrap+=<,>,b,s,[,],~
set wrap

"" window settings
set cmdheight=2
set cmdwinheight=6
" set columns=100
" set lines=36
set relativenumber
set fillchars=stl:\ ,stlnc:-,vert:\ ,fold:-,diff:-
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
set guifont=Ubuntu\ Mono\ 14

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
command!	WQ	wq
command!	Wq	wq
command!	W	w
command!	Q	q

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

" split/close tab
nmap	<leader><Tab>		:tabedit<CR>
nmap	<leader>v			:vs<CR>
nmap	<leader>q			:q<CR>
nmap	<leader>Q			:q<CR>

" buffer scrolling in insert mode
inoremap	<C-E>	<Esc><C-E>a
inoremap	<C-W>	<Esc><C-Y>a

"" end line semicolon ;
autocmd		FileType	c		nnoremap ; $a;
autocmd		FileType	cpp		nnoremap ; $a;
autocmd		FileType	java	nnoremap ; $a;
autocmd		FileType	python	nnoremap ; $a;
"" jump window
inoremap	<C-]>	<Esc><C-W><C-]>
nnoremap	<C-]>	<C-W><C-]>

"" install pathogen
execut pathogen#infect()

"" color settings
set background=dark
syntax enable
syntax on
colorscheme kiddo

" vim-airline configuration
let g:airline_detect_modified = 1
let g:airline_detect_paste = 1
let g:airline_detect_crypt = 1
let g:airline_detect_iminsert = 1
let g:airline_inactive_collapse = 1
let g:airline_theme = 'powerlineish'
let g:airline_powerline_fonts = 1

if !exists('g:airline_symbols')
	let g:airline_symbols = {}
endif

"let g:airline_left_sep='>'
"let g:airline_right_sep='<'
"let g:airline_left_sep = '▶'
"let g:airline_right_sep = '◀'
let g:airline_left_sep = '»'
let g:airline_right_sep = '«'
let g:airline_symbols.crypt = '🔒'
"let g:airline_symbols.linenr = '␊'
"let g:airline_symbols.linenr = '␤'
let g:airline_symbols.linenr = '¶'
let g:airline_symbols.branch = '⎇'
"let g:airline_symbols.paste = 'ρ'
let g:airline_symbols.paste = 'Þ'
"let g:airline_symbols.paste = '∥'
let g:airline_symbols.whitespace = 'Ξ'

" Macros
nmap	<F1>	:set columns=999<CR>:set lines=46<CR>
nmap	<F2>	:set columns=999<CR>:set lines=46<CR>
nmap	<F3>	:NERDTreeToggle .<CR>
nmap	<F4>	:TagbarToggle<CR>
nmap	<F5>	:GitGutterToggle<CR>
nmap	<F6>	:IndentGuidesToggle<CR>
nmap	<F7>	:OpenBrowser http://google.com/<CR>

nmap	<leader><space>		:Tabularize / <CR>
nmap	<leader>"			:Tabularize /"[^"]*"<CR>
nmap	<leader>(			:Tabularize /(.*)<CR>
nmap	<leader>=			:Tabularize /= <CR>

autocmd VimEnter * silent! :SyntasticToggleMode
autocmd VimEnter * silent! :GitGutterDisable
autocmd	BufWritePost * silent! :SyntasticCheck

" indent guide
"let g:indent_guides_auto_colors = 1
"hi IndentGuidesOdd  ctermbg=0
"hi IndentGuidesEven ctermbg=250
let g:indent_guides_auto_colors = 0
autocmd VimEnter,Colorscheme * :hi IndentGuidesOdd  guibg=red   ctermbg=0
autocmd VimEnter,Colorscheme * :hi IndentGuidesEven guibg=green ctermbg=236
"let g:indent_guides_color_change_percent = 10
let g:indent_guides_guide_size = 0
let g:indent_guides_start_level = 2
let g:indent_guides_default_mapping = 0

" autocomplpop settings
"let g:acp_completeOption = '.,w,b,t'
"let g:acp_completeoptPreview = 1
"let g:acp_behaviorSnipmateLength = -1
"let g:acp_behaviorKeywordLength = 2

" OmniCppComplete
"let OmniCpp_GlobalScopeSearch = 0
"let OmniCpp_NamespaceSearch = 2
"let OmniCpp_ShowScopeInAbbr = 0
"let OmniCpp_ShowPrototypeInAbbr = 1 " show function parameters
"let OmniCpp_ShowAccess = 1
"let OmniCpp_DefaultNamespaces = ["std"]
"let OmniCpp_MayCompleteDot = 1 " autocomplete after .
"let OmniCpp_MayCompleteArrow = 1 " autocomplete after ->
"let OmniCpp_MayCompleteScope = 1 " autocomplete after ::
"let OmniCpp_SelectFirstItem = 2
"let OmniCpp_LocalSearchDecl = 1
"let OmniCpp_DefaultNamespaces = ["std", "_GLIBCXX_STD"]
" automatically open and close the popup menu / preview window
"autocmd CursorMovedI * if pumvisible() == 0|pclose|endif
"autocmd InsertLeave * if pumvisible() == 0|pclose|endif

" AutoClose options
let g:AutoClosePairs_add = "[] '' "
let g:AutoClosePreserveDotReg = 0

""	syntastic settings
set statusline+=%#warningmsg#
set statusline+=%{SyntasticStatuslineFlag()}
set statusline+=%*

highlight	SyntasticErrorSign	cterm=BOLD	ctermfg=255	ctermbg=9	guifg=white	guibg=red
highlight	SyntasticErrorLine	cterm=BOLD	ctermfg=255	ctermbg=9	guibg=#2f0000

let b:syntastic_c_cflags = "-Wall -fopenmp -I/usr/include/ImageMagick"
let b:syntastic_cpp_cflags = "-Wall -fopenmp -I/usr/include/ImageMagick"

let g:syntastic_auto_loc_list = 1
let g:syntastic_check_on_open = 1
let g:syntastic_check_on_wq = 1

let g:syntastic_echo_current_error = 1
let g:syntastic_error_symbol = "✗"
let g:syntastic_warning_symbol = "⚠"

let g:syntastic_always_populate_loc_list = 1
let g:syntastic_auto_jump = 2

let g:syntastic_python_pylama_quiet_messages = {
	\ "type":  "style",
	\ "regex": '\m\[C03\d\d\]' }

"" YouCompleteMe Options
let g:ycm_min_num_of_chars_for_completion = 2
let g:ycm_auto_trigger = 1
let g:ycm_min_num_identifier_candidate_chars = 0
let g:ycm_show_diagnostics_ui = 0
let g:ycm_enable_diagnostic_signs = 0
let g:ycm_enable_diagnostic_highlighting = 0
let g:ycm_echo_current_diagnostic = 0

let g:ycm_allow_changing_updatetime = 0
let g:ycm_complete_in_comments = 0
let g:ycm_complete_in_string = 0
let g:ycm_collect_identifiers_from_comments_and_strings = 1
let g:ycm_collect_identifiers_from_tags_files = 0
let g:ycm_seed_identifiers_with_syntax = 1

let g:ycm_path_to_python_interpreter = '/usr/bin/python2.7'
let g:ycm_server_use_vim_stdout = 1
let g:ycm_global_ycm_extra_conf = ''
let g:ycm_server_log_level = 'info'
let g:ycm_auto_start_csharp_server = 0
let g:ycm_auto_stop_csharp_server = 0
let g:ycm_csharp_server_port = 0

let g:ycm_add_preview_to_completeopt = 1
let g:ycm_autoclose_preview_window_after_completion = 1
let g:ycm_autoclose_preview_window_after_insertion = 1

let g:ycm_key_list_select_completion = []
let g:ycm_key_list_previous_completion = []
let g:ycm_key_invoke_completion = '<C-D>'
let g:ycm_key_detailed_diagnostics = '<leader>d'
let g:ycm_global_ycm_extra_conf = '~/.ycm_extra_conf.py'
let g:ycm_confirm_extra_conf = 0
let g:ycm_filepath_completion_use_working_dir = 1
let g:ycm_cache_omnifunc = 0
let g:ycm_use_ultisnips_completer = 1
let g:ycm_disable_for_files_larger_than_kb = 4096
autocmd BufWritePre * :YcmRestartServer

nmap	<leader>f	:YcmForceCompileAndDiagnostics<CR>
nmap	<leader>s	:YcmShowDetailedDiagnostic<CR>
nmap	<leader>t	:YcmCompleter GetType<CR>
nmap	<leader>p	:YcmCompleter GetParent<CR>
nmap	<leader>r	:YcmRestartServer<CR>
nmap	<leader><Up>	:YcmCompleter GoToDeclaration<CR>
nmap	<leader><Down>	:YcmCompleter GoToDefinition<CR>
