""
""	Author: Joseph Yu
""	Last Modified: 2015/7/05
""

"" coding settings
set autoindent
set nosmartindent
set complete=.,w,b,u,U,t,k
set completeopt+=menuone,menu,preview
filetype plugin on
set number
set showfulltag
autocmd FileType c,cpp set tags+=~/.vim/tags/cpptags
autocmd FileType c,cpp set tags+=~/.vim/tags/gl
autocmd FileType c,cpp set tags+=~/.vim/tags/glut
autocmd FileType c,cpp set tags+=~/.vim/tags/glew
autocmd FileType c,cpp set tags+=~/.vim/tags/opencvtags

autocmd FileType c set omnifunc=ccomplete#Complete
autocmd FileType cpp setl ofu=ccomplete#Complete
autocmd FileType python set omnifunc=pythoncomplete#Complete
autocmd FileType php setl ofu=phpcomplete#CompletePHP
autocmd FileType html,xhtml setl ofu=htmlcomplete#CompleteTags
autocmd FileType css set omnifunc=csscomplete#CompleteCSS
autocmd FileType xml set omnifunc=xmlcomplete#CompleteTags
autocmd FileType ruby,eruby setl ofu=rubycomplete#Complete
autocmd FileType javascript set omnifunc=javascriptcomplete#CompleteJS

"" buffer settings
set autoread
set backupdir=.,~/.vimtmp,/tmp
set confirm
set cscopepathcomp=2
set directory=.,~/.vimtmp,/tmp
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
set encoding=utf-8
set ignorecase
set incsearch
set linebreak
set shiftround
set showbreak=+++\
set smartcase
set tabstop=4
set softtabstop=4
set shiftwidth=4
set noexpandtab
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
"set relativenumber
set fillchars=stl:\ ,stlnc:-,vert:\|,fold:-,diff:-
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

if has("gui_running")
	set lines=999
	set columns=999
endif

"" GUI settings
set guifont=Ubuntu\ Mono\ 14

let mapleader=","

" copy, cut, paste, save
inoremap	<C-C>	<Esc>yy
inoremap	<C-X>	<Esc>cc
inoremap	<C-V>	<Esc>pa

"" typo
command!	WQ	wq
command!	Wq	wq
command!	W	w
command!	Q	q
command!	Qa	qa
command!	QA	qa

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
autocmd		FileType	php		nnoremap ; $a;

"" jump window
inoremap	<C-]>	<Esc><C-W><C-]>
nnoremap	<C-]>	<C-W><C-]>

"" Omni Complete
inoremap <expr>	<CR>		pumvisible() ? "\<C-Y>" : "\<CR>"
inoremap <expr>	<Down>		pumvisible() ? "\<C-N>" : "\<Down>"
inoremap <expr>	<Up>		pumvisible() ? "\<C-P>" : "\<Up>"
inoremap <expr> <PageDown>	pumvisible() ? "\<PageDown>\<C-P>\<C-N>" : "\<PageDown>"
inoremap <expr> <PageUp>	pumvisible() ? "\<PageUp>\<C-P>\<C-N>" : "\<PageUp>"
inoremap <expr> <C-D>		pumvisible() ? "\<PageDown>\<C-P>\<C-N>" : "\<C-D>"
inoremap <expr> <C-U>		pumvisible() ? "\<PageUp>\<C-P>\<C-N>" : "\<C-U>"
inoremap <C-D>	<C-X><C-O><C-P>


"" install pathogen
execut pathogen#infect()

"" color settings
set background=dark
syntax enable
syntax on
colorscheme kiddo

function! Test_php() range
	if &ft == "php"
		let dst = expand('%:t') . ".html"
		let temp = tempname()
		execute ":silent ! php % > " . dst
		execute ":silent ! google-chrome " . dst " > " . temp . " 2>&1 "
		execute ":pclose!"
		execute ":redraw!"
		set splitbelow
		execute ":6split"
		execute ":e! " . temp
		set nosplitbelow
		let delStatus = delete(dst)
		if delStatus != 0
			echo "Fail to Delete temp file"
		endif
	endif
endfunction

nmap	<silent><F1>	:set columns=999<CR>:set lines=46<CR>
nmap	<silent><F2>	:NERDTreeToggle .<CR>
nmap	<F3>	:TagbarToggle<CR>
nmap	<F4>	:GitGutterToggle<CR>
nmap	<silent><F5>	:silent ! google-chrome %<CR>:pclose!<CR>:redraw!<CR>
nmap	<silent><F6>	:call Test_php()<CR>

nmap	<leader><space>		:Tabularize / <CR>
nmap	<leader>"			:Tabularize /"[^"]*"<CR>
nmap	<leader>(			:Tabularize /(.*)<CR>
nmap	<leader>=			:Tabularize /= <CR>
nmap	<leader>a			:AV<CR>
nmap	<leader>n			:AN<CR>

autocmd VimEnter * silent! :SyntasticToggleMode
autocmd VimEnter * silent! :GitGutterDisable
autocmd	BufWritePost * silent! :SyntasticCheck


"" ****** autocomplpop settings ******
let g:acp_completeOption = '.,w,b,t'
let g:acp_completeoptPreview = 1
let g:acp_behaviorSnipmateLength = -1
let g:acp_behaviorKeywordLength = 1
"" **********************************************

"" ****** clang complete settings ******
let g:clang_auto_select = 1
let g:clang_complete_copen = 1
let g:clang_periodic_quickfix = 0
let g:clang_hl_errors = 0
let g:clang_close_preview = 1
let g:clang_user_options = '-std=c++11'
let g:clang_sort_algo = "alpha"
let g:clang_complete_macros = 1
let g:clang_complete_patterns = 1
let g:clang_jumpto_declaration_key = "<C-]>"
let g:clang_jumpto_declaration_in_preview_key = "<C-W>]"
let g:clang_jumpto_back_key = "<C-T>"
autocmd CursorMovedI * if pumvisible() == 0|pclose|endif
autocmd InsertLeave * if pumvisible() == 0|pclose|endif
"" **************************************************************

"" ****** vim-airline configuration ******
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

"let g:airline_left_sep = '▶'
"let g:airline_right_sep = '◀'
"let g:airline_left_sep = '>'
"let g:airline_right_sep = '<'
"let g:airline_left_sep = '⊃'
"let g:airline_right_sep = '⊂'
"let g:airline_left_sep = '≻'
"let g:airline_right_sep = '≺'
"let g:airline_left_sep = '⟩'
"let g:airline_right_sep = '⟨'
"let g:airline_left_sep = '◗'
"let g:airline_right_sep = '◖'
"let g:airline_left_sep = '⇒'
"let g:airline_right_sep = '⇐'
"let g:airline_left_sep = '⇉'
"let g:airline_right_sep = '⇇'
"let g:airline_left_sep = '↣'
"let g:airline_right_sep = '↢'
"let g:airline_left_sep = '→'
"let g:airline_right_sep = '←'
"let g:airline_left_sep = '»'
"let g:airline_right_sep = '«'
"let g:airline_left_sep = '⌦  '
"let g:airline_right_sep = '⌫  '
let g:airline_left_sep = '⊳'
let g:airline_right_sep = '⊲ '

"let g:airline_right_alt_sep = ''
"let g:airline_left_alt_sep = '⌲'
"let g:airline_right_alt_sep = '☄ '
"let g:airline_left_alt_sep = '☃ '
"let g:airline_right_alt_sep = '☂ '
"let g:airline_left_alt_sep = '☁ '
"let g:airline_right_alt_sep = '☬ '
"let g:airline_left_alt_sep = '✯ '
let g:airline_right_alt_sep = '⌘ '
let g:airline_left_alt_sep = ''

"let g:airline_symbols.crypt = '☢'
"let g:airline_symbols.crypt = '☣'
let g:airline_symbols.crypt = '☠'

"let g:airline_symbols.linenr = ''
"let g:airline_symbols.linenr = '⌮'
"let g:airline_symbols.linenr = '¶'
"let g:airline_symbols.linenr = '⇳ '
let g:airline_symbols.linenr = '⇵ '

"let g:airline_symbols.branch = '☯'
"let g:airline_symbols.branch = '☻'
"let g:airline_symbols.branch = '☺'
"let g:airline_symbols.branch = '☈ '
let g:airline_symbols.branch = '⎇ '

"let g:airline_symbols.paste = 'Þ'
"let g:airline_symbols.paste = 'ρ'
"let g:airline_symbols.paste = '℘'
let g:airline_symbols.paste = 'ℙ '

"let g:airline_symbols.readonly = ''
let g:airline_symbols.readonly = 'ℜ '

"let g:airline_symbols.whitespace = 'Ξ'
"let g:airline_symbols.whitespace = '⇆'
let g:airline_symbols.whitespace = '⌨  '
" ***********************************************

"" ****** OmniCppComplete ******
"let OmniCpp_GlobalScopeSearch = 1
"let OmniCpp_NamespaceSearch = 2
"let OmniCpp_ShowScopeInAbbr = 1
"let OmniCpp_ShowPrototypeInAbbr = 1 " show function parameters
"let OmniCpp_ShowAccess = 0
"let OmniCpp_DefaultNamespaces = ["std"]
"let OmniCpp_MayCompleteDot = 1 " autocomplete after .
"let OmniCpp_MayCompleteArrow = 1 " autocomplete after ->
"let OmniCpp_MayCompleteScope = 1 " autocomplete after ::
"let OmniCpp_SelectFirstItem = 0
"let OmniCpp_LocalSearchDecl = 0
"let OmniCpp_DefaultNamespaces = ["std", "_GLIBCXX_STD"]
" automatically open and close the popup menu / preview window
"autocmd CursorMovedI * if pumvisible() == 0|pclose|endif
"autocmd InsertLeave * if pumvisible() == 0|pclose|endif
"" **********************************************************************

"" ****** AutoClose options ******
let g:AutoClosePairs_add = "[] '' "
let g:AutoClosePreserveDotReg = 0

"" ****** syntastic settings ******
set statusline+=%#warningmsg#
set statusline+=%{SyntasticStatuslineFlag()}
set statusline+=%*

highlight	SyntasticErrorSign	cterm=BOLD	ctermfg=255	ctermbg=9	guifg=white	guibg=red
"highlight	SyntasticErrorLine	cterm=BOLD	ctermfg=255	ctermbg=9	guibg=#2f0000

let b:syntastic_c_cflags = "-Wall `Magick++-config --cflags --libs`"
let b:syntastic_cpp_cflags = "-Wall `Magick++-config --cflags --libs`"
let g:syntastic_c_include_dirs = ['/usr/include/ImageMagick/']
let g:syntastic_cpp_include_dirs = ['/usr/include/ImageMagick/']
let g:syntastic_auto_loc_list = 1
let g:syntastic_check_on_open = 0
let g:syntastic_check_on_wq = 1
let g:syntastic_echo_current_error = 1
let g:syntastic_error_symbol = "✗"
let g:syntastic_warning_symbol = "⚠"
let g:syntastic_always_populate_loc_list = 1
let g:syntastic_auto_jump = 0
"" *********************************************************************************

"" YouCompleteMe Options
"nmap	<leader>f	:YcmForceCompileAndDiagnostics<CR>
"nmap	<leader>s	:YcmShowDetailedDiagnostic<CR>
"nmap	<leader>t	:YcmCompleter GetType<CR>
"nmap	<leader>p	:YcmCompleter GetParent<CR>
"nmap	<leader>r	:YcmRestartServer<CR>
"nmap	<leader><Up>	:YcmCompleter GoToDeclaration<CR>
"nmap	<leader><Down>	:YcmCompleter GoToDefinition<CR>
"let g:ycm_min_num_of_chars_for_completion = 2
"let g:ycm_auto_trigger = 1
"let g:ycm_min_num_identifier_candidate_chars = 0
"let g:ycm_show_diagnostics_ui = 0
"let g:ycm_enable_diagnostic_signs = 0
"let g:ycm_enable_diagnostic_highlighting = 0
"let g:ycm_echo_current_diagnostic = 0
"let g:ycm_always_populate_location_list = 0

"let g:ycm_allow_changing_updatetime = 0
"let g:ycm_complete_in_comments = 1
"let g:ycm_complete_in_string = 1
"let g:ycm_collect_identifiers_from_comments_and_strings = 1
"let g:ycm_collect_identifiers_from_tags_files = 0
"let g:ycm_seed_identifiers_with_syntax = 1

"let g:ycm_path_to_python_interpreter = '/usr/bin/python2'
"let g:ycm_server_use_vim_stdout = 1
"let g:ycm_server_log_level = 'debug'
"let g:ycm_auto_start_csharp_server = 0
"let g:ycm_auto_stop_csharp_server = 0
"let g:ycm_csharp_server_port = 1

"let g:ycm_add_preview_to_completeopt = 1
"let g:ycm_autoclose_preview_window_after_completion = 1
"let g:ycm_autoclose_preview_window_after_insertion = 1

"let g:ycm_key_list_select_completion = []
"let g:ycm_key_list_previous_completion = []
"let g:ycm_key_invoke_completion = '<C-Space>'
"let g:ycm_key_detailed_diagnostics = '<leader>d'
"let g:ycm_global_ycm_extra_conf = '~/.ycm_extra_conf.py'
"let g:ycm_confirm_extra_conf = 0
"let g:ycm_filepath_completion_use_working_dir = 1
"let g:ycm_cache_omnifunc = 0
"let g:ycm_use_ultisnips_completer = 1
"let g:ycm_disable_for_files_larger_than_kb = 4096
""autocmd BufWritePre * :YcmRestartServer
"inoremap <C-D> <C-X><C-O><C-P>
""autocmd CursorMovedI * call feedkeys("\<C-D>")
