""	Vim color file
""	Maintainer: Joseph Yu
""	Last Change: 2015 1 31
""	

hi clear

let colors_name = "kiddo"

set t_Co=256
set background=dark

if exists("syntax_on")
  syntax reset
endif


""	Normal text
hi	Normal		cterm=NONE	ctermfg=255	ctermbg=0		gui=NONE	guifg=#FFFFFF	guibg=#000000	

""	the character under cursor
hi	Cursor		cterm=NONE	ctermfg=0	ctermbg=255		gui=NONE	guifg=#000000	guibg=#FFFFFF
""	like Cursor but used when in IME mode
hi	CursorIM	cterm=NONE	ctermfg=0	ctermbg=255		gui=NONE	guifg=#000000	guibg=#FFFFFF
""	the screen cursor column that the cursor is in
hi	CursorColumn	cterm=NONE	ctermfg=NONE	ctermbg=NONE	gui=NONE	guifg=NONE	guibg=NONE
""	the screen cursor line that the cursor is in
hi	CursorLine		cterm=NONE	ctermfg=NONE	ctermbg=233		gui=NONE	guifg=NONE	guibg=NONE
""	Directory names
hi	Directory	cterm=bold	ctermfg=34		gui=NONE	guifg=#9933FF
""	diff mode: add line
hi	DiffAdd		ctermbg=236		guibg=#303030
""	diff mode: change line
hi	DiffChange	ctermbg=236		guibg=#303030
""	diff mode: delete line
hi	DiffDelete	ctermbg=236		cterm=bold		gui=bold	guibg=#303030
""	diff mode: change text within a changed line
hi	DiffText	ctermbg=236		ctermfg=82	cterm=bold		gui=bold	guibg=#303030	guifg=#33FF00
""	Error message on the command line
hi	ErrorMsg	ctermfg=255		ctermbg=160		guifg=#FFFFFF	guifg=#CC0000
""	the column separating vertically split window
hi	VertSplit	ctermbg=0		ctermfg=70		guibg=#000000	guifg=#339900
""	lines use for closed tabs
hi	Folded		ctermfg=69		guifg=#3366FF
""	'foldcolumn'
hi	FoldColumn	ctermfg=69		guifg=#3366FF
""	columns where signs are display
hi	SignColumn	ctermfg=63		guifg=#3366FF
""	'incsearch'
hi	IncSearch	cterm=bold		gui=bold
""	Line numbers
hi	LineNr			cterm=NONE	ctermfg=248		ctermbg=233		gui=NONE	guifg=#A8A8A8	guibg=#121212
hi	CursorLineNr	cterm=NONE	ctermfg=255		ctermbg=234		gui=NONE	guifg=#FFFFFF	guibg=#1C1C1C
""	the character under the cursor or just before it if it
""	is a paired bracket
hi	MatchParen	cterm=bold		ctermfg=0		ctermbg=214		gui=bold	guifg=#000000	guibg=#FF9900
""	'showmode' message (e.g., "-- INSERT --")
hi	ModeMsg		cterm=bold		ctermfg=121		ctermbg=0		gui=bold	guifg=#66FF99	guibg=#000000
""	|more-prompt|
hi	MoreMsg		cterm=bold		ctermfg=153		ctermbg=0		gui=bold	guifg=#99CCFF	guibg=#000000
""	'~' in front of non-used lines
hi	NonText		cterm=bold		ctermfg=135		ctermbg=0		gui=bold	guifg=#9933FF	guibg=#000000
""	Popup menu: normal item.
hi	Pmenu		cterm=bold		ctermbg=70		ctermfg=255		gui=bold	guibg=#339900	guifg=#FFFFFF
""	Popup menu: selected item.
hi	PmenuSel	cterm=bold		ctermbg=76		ctermfg=255		gui=bold	guibg=#33CC00	guifg=#FFFFFF
""	Popup menu: scrollbar.
hi	PmenuSbar	ctermbg=28		ctermfg=81		guibg=#006600	guifg=#33CCFF
""	Popup menu: Thumb of the scrollbar.
hi	PmenuThumb	ctermbg=34		ctermfg=75		guibg=#009900	guifg=#3399ff
""	|hit-enter| prompt and yes/no questions
hi	Question	ctermbg=0		ctermfg=40		guibg=#000000	guifg=#00CC00
""	Last search pattern highlighting (see 'hlsearch').
""	Also used for highlighting the current line in the quickfix
""	window and similar items that need to stand out.
hi	Search		ctermfg=NONE	ctermbg=220		guifg=NONE		guibg=#FFCC00
""	Meta and special keys listed with ":map", also for text used
""	to show unprintable characters in the text, 'listchars'.
""	Generally: text that is displayed differently from what it
""	really is.
hi	SpecialKey	ctermfg=69		guifg=#3366FF
""	status line of current window
hi	StatusLine		ctermfg=0		ctermbg=0	cterm=NONE		guifg=#000000	guibg=#000000	gui=NONE
hi	StatusLineNC	ctermfg=0		ctermbg=0	cterm=NONE		guifg=#000000	guibg=#000000	gui=NONE
""	tab pages line, not active tab page label
hi	TabLine		cterm=bold		ctermfg=99		ctermbg=0		gui=bold		guifg=#6633FF	guibg=#000000
""	tab pages line, where there are no labels
hi	TabLineFill	cterm=bold		ctermfg=0		ctermbg=0		gui=bold		guifg=#000000	guibg=#000000
""	tab pages line, active tab page label
hi	TabLineSel	cterm=underline,bold			ctermfg=214		ctermbg=236		gui=underline,bold	guifg=#FF9900	guibg=#303030
""	titles for output from ":set all", ":autocmd" etc.
hi	Title		cterm=NONE		ctermfg=69		gui=NONE	guifg=#FF0033
""	Visual mode selection
hi	Visual		cterm=reverse	ctermbg=NONE	gui=reverse	guibg=NONE
""	Visual mode selection when vim is "Not Owning the Selection".
""	Only X11 Gui's |gui-x11| and |xterm-clipboard| supports this.
hi	VisualNOS	cterm=underline,bold	gui=underline,bold
""	warning messages
hi	WarningMsg	cterm=bold		ctermbg=160		ctermfg=255		gui=bold		guibg=#CC0000	guifg=#FFFFFF
""	current match in 'wildmenu' completion
hi	WildMenu	ctermfg=16		ctermbg=214		guifg=#000000	guibg=#FF9900



""	For the GUI you can use the following groups to set the colors for the menu,
"	scrollbars and tooltips.  They don't have defaults.  This doesn't work for the
"	Win32 GUI.  Only three highlight arguments have any effect here: font, guibg,
"	and guifg.
hi	Menu		gui=bold
hi	scrollbars	gui=bold
hi	Tooltip		gui=bold	


""	general syntax highlighting
hi	Comment		cterm=NONE		ctermfg=243		gui=NONE	guifg=#767676
hi	Constant	cterm=bold		ctermfg=230		gui=bold	guifg=#FF0033
hi	String		cterm=NONE		ctermfg=40		gui=NONE	guifg=#00CC00
hi	Character	cterm=NONE		ctermfg=40		gui=NONE	guifg=#00CC00
hi	Number		cterm=bold		ctermfg=161		gui=bold	guifg=#FF0033
hi	Boolean		cterm=bold		ctermfg=161		gui=bold	guifg=#FF0033
hi	Float		cterm=bold		ctermfg=161		gui=bold	guifg=#FF0033
hi	Identifier	cterm=bold		ctermfg=214		gui=bold	guifg=#FF9900
hi	Function	cterm=NONE		ctermfg=123		gui=NONE	guifg=#FF9900
hi	Statement	cterm=bold		ctermfg=165		gui=bold	guifg=#9933FF
hi	Conditional	cterm=bold		ctermfg=165		gui=bold	guifg=#CC00FF
hi	Repeat		cterm=bold		ctermfg=165		gui=bold	guifg=#CC00FF
hi	Label		cterm=bold		ctermfg=165		gui=bold	guifg=#CC00FF
hi	Operator	cterm=bold		ctermfg=129		gui=bold	guifg=#9933FF
hi	Keyword		cterm=bold		ctermfg=135		gui=bold	guifg=#9933FF
hi	Exception	cterm=bold		ctermfg=165		gui=bold	guifg=#CC00FF
hi	PreProc		cterm=bold		ctermfg=161		gui=bold	guifg=#9933FF
hi	Include		cterm=bold		ctermfg=165		gui=bold	guifg=#CC00FF
hi	Define		cterm=bold		ctermfg=124		gui=bold	guifg=#9933FF
hi	Macro		cterm=bold		ctermfg=69		gui=bold	guifg=#9933FF
hi	PreCondit	cterm=bold		ctermfg=165		gui=bold	guifg=#CC00FF
hi	Type		cterm=bold		ctermfg=33		gui=bold	guifg=#3366FF
hi	StorageClass	cterm=bold	ctermfg=33		gui=bold	guifg=#3366FF
hi	Structure	cterm=bold		ctermfg=33		gui=bold	guifg=#3366FF
hi	Typedef		cterm=bold		ctermfg=33		gui=bold	guifg=#336699
hi	Special		cterm=bold		ctermfg=214		gui=bold	guifg=#FF9900
hi	SpecialChar	cterm=bold		ctermfg=214		gui=bold	guifg=#FF9900
hi	Tag			cterm=bold		ctermfg=214		gui=bold	guifg=#FF9900
hi	Delimiter	cterm=bold		ctermfg=214		gui=bold	guifg=#FF9900
hi	SpecialComment	cterm=bold	ctermfg=33		gui=bold	guifg=#3366FF
hi	Debug		cterm=bold		ctermfg=161		gui=bold	guifg=#FF0033
hi	Underlined	cterm=underline,bold	ctermfg=214			gui=underline,bold	guifg=#FF9900
hi	Ignore		cterm=bold		ctermfg=160		gui=bold	guifg=#CC0000
hi	Error		cterm=bold		ctermbg=160		ctermfg=255	gui=bold	guibg=#CC0000	guifg=#FFFFFF
hi	Todo		cterm=bold		ctermfg=161		ctermbg=214	gui=bold	guifg=#FF0033	guibg=#FF9900

"" statusline style
source ~/.vim/colors/statusline.vim

""	enable C syntax highlight
""	GNU gcc specific items
:let c_gnu = 1
""	strings and numbers inside a comment
:let c_comment_strings = 1
""	trailing white space and spaces before a <Tab>
:let c_space_errors = 1
""	highlight a missing }; this forces syncing from the
""	start of the file, can be slow
:let c_curly_error = 1
""	do standard ANSI types
:let c_ansi_typedefs = 1
""	do standard ANSI constants
:let c_ansi_constants = 1
""	use C syntax for *.h files, instead of C++
:let c_syntax_for_h = 1

""	enable Java syntax highlight
""	All identifiers in java.lang.* are always visible in all classes.  To
""	highlight them use:
:let java_highlight_java_lang_ids=1
""	If you write function declarations that are always indented by either
""	a tab, 8 spaces or 2 spaces you may want to set
:let java_highlight_functions="indent"
""	However, if you follow the Java guidelines about how functions and classes are
""	supposed to be named (with respect to upper and lowercase), use
:let java_highlight_functions="style"
""	In order to help you write code that can be easily ported between Java and
""	C++, all C++ keywords can be marked as an error in a Java program.  To
""	have this add this line in your .vimrc file:
:let java_allow_cpp_keywords = 0
""	In order to highlight nested parens with different colors define colors
""	for javaParen, javaParen1 and javaParen2, for example with
:hi link javaParen Comment
""	If you notice highlighting errors while scrolling backwards, which are fixed
""	when redrawing with CTRL-L, try setting the "java_minlines" internal variable
""	to a larger number:
:let java_minlines = 50



""	enable Python syntax highlight
""	For highlighted numbers:
:let python_highlight_numbers = 1
""	For highlighted builtin functions:
:let python_highlight_builtins = 1
""	For highlighted standard exceptions:
:let python_highlight_exceptions = 1
""	For highlighted trailing whitespace and mix of spaces and tabs:
:let python_highlight_space_errors = 1
""	If you want all possible Python highlighting (the same as setting the
""	preceding three options):
""	:let python_highlight_all = 1

