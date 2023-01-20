"==============================================================================
" TITLE: Init
" AUTHOR: Shadow
" DATE: January 16, 2023
"
" Reqirments:
"
" These Enviroment variables should be set in the .zshenv
"
" XDG_CONFIG_HOME = ~/.config
" XDG_DATA_HOME = ~/.local/share/

"==============================================================================
" Vimscript
" plugins {{{1
" runtime {{{2

" runtime
" :ru[ntime][!] [where] {file} ..
"
"   Sources |Ex| commands or Lua code (".lua" files) read from {file} (a relative path) in each
"   directory given by 'runtimepath' and/or 'packpath'. There can be multiple space-separated {file}
"   arguments. Each {file} is searched for in the first directory from 'runtimepath', then in the
"   second directory, etc. When [!] is included, all found files are sourced. Else only the first
"   found file is sourced.

" source plug.vim file
runtime ./plug.vim

" source coc-install.vim
runtime ./coc-install.vim

" Custom abbreviations for vim
runtime ./abbrev.vim


" }}}
" auto install plugins {{{2

call plug#end()

" Automatically install missing plugins on startup
autocmd VimEnter *
  \  if len(filter(values(g:plugs), '!isdirectory(v:val.dir)'))
  \|   PlugInstall --sync | q
  \| endif

" }}}
" }}}
" lang providers {{{1
" python {{{2

" disable python 3
let g:loaded_python3_provider = 0

" }}}
" }}}
" filetype, syntax and conceal {{{1

" make sure user defined tabs and indent are respected
filetype indent off
filetype plugin on
syntax enable

" Concealed text is completely hidden unless it has a custom replacement character defined
set conceallevel=2
" }}}
" basic setup {{{1
" Colorscheme {{{2

" This command switches on syntax highlighting:
syntax enable

" When set to "dark" or "light", adjusts the default color groups for that background type.  The
" |TUI| or other UI sets this on startup (triggering |OptionSet|) if it can detect the background
" color. This option does NOT change the background color, it tells Nvim what the "inherited"
" (terminal/GUI) background looks like. See |:hi-normal| if you want to set the background color
" explicitly.
set background=dark
" colorscheme NeoSolarized

if has('gui_running')
    set background=dark
endif

" }}}
" Leader {{{2

" The Leader key is a way of extending the power of VIM's shortcuts by using
" sequences of keys to perform a command.
let g:mapleader = "\<Space>"

" }}}
" splash screen {{{2

" splash screen at the start
set shortmess+=I

" }}}
" backspace {{{2

" make delete work sanely
set backspace=indent,eol,start

" }}}
" number {{{2
set number
set relativenumber
" }}}
" cursor line {{{2
set cursorline
" }}}
" }}}
" text and column width {{{1

" Always show the signcolumn, otherwise it would shift the text each time
" diagnostics appear/become resolved.
if has("nvim 0.5.0") || has("patch-8.1.1564")
  " Recently vim can merge signcolumn and number column into one
  set signcolumn=number
else
  set signcolumn=yes
endif

set updatetime=100

" echo winwidth(0) to get the length of the screen and devide by 2
" Text width 79 if colorcolumn is set to 1 and there is no colorcolumn join.
" Text width 80 if there is no colorcolumn set to 1
set textwidth=79

" Set the column at the 80 +1 after textwidth
set colorcolumn=+1

"}}}
" command line {{{1

" Height of the command bar.
set cmdheight=1
" Number of screen lines to use for the command-line window. Default is 7
set cmdwinheight=7
" Show (partial) command in the last line of the screen.
set showcmd
" If in Insert, Replace or Visual mode do not put a message on the last line.
set noshowmode
" Show output from last command (default 5)
set modelines=5

" Show the line and column number of the cursor position.
set ruler

"}}}
" statusline {{{1

" set up a basic statusline
"set statusline=
"set statusline+=%#PmenuSel#
"set statusline+=%#LineNr#
"set statusline+=\ %f
"set statusline+=%m
"set statusline+=%=
"set statusline^=%{coc#status()}%{get(b:,'coc_current_function','')}
"set statusline+=%#CursorColumn#
"set statusline+=\ %y
"set statusline+=\ %{&fileencoding?&fileencoding:&encoding}
"set statusline+=\[%{&fileformat}\]
"set statusline+=\ %p%%
"set statusline+=\ %l:%c


" }}}
" navigation {{{1
" change CWD {{{2
"
" When on, Vim will change the current working directory whenever you open a
" file, switch buffers, delete a buffer or open/close a window. It will change
" to the directory containing the file which was opened or selected.
set autochdir

" }}}
" buffer {{{2

" Allows you to hide buffers with unsaved changes without being prompted.
set hidden

" When a file has been detected to have been changed outside of Vim and
" it has not been changed inside of Vim, automatically read it again.
set autoread

" Execute {command}, and use a dialog when an operation has to be confirmed.
" set confirm

" }}}
" scroll {{{2

" Set to 999 the cursor will stay in the middle.
" Set <number> for <number> lines from the top of bottom
set scrolloff=999
set sidescroll=1
set sidescrolloff=100

"}}}
" search {{{2

" If the 'ignorecase' option is on, the case of normal letters is ignored.
" 'smartcase' can be set to ignore case when the pattern contains lowercase
" letters only
set ignorecase
" Override the 'ignorecase' option if the search pattern contains upper case
" characters.
set smartcase

" While typing a search command, show where the pattern is matched.
set incsearch

" last search pattern highlighting
set hlsearch

" When on, the :substitute flag 'g' is default on.
set gdefault

" For regular expression
set magic
"}}}
" }}} end navigation
" formatting {{{1
" format {{{2

" Remove comment leader when joining comments.
set formatoptions+=j

" Smart auto indenting inside numbed lists
set formatoptions+=n

" J join two lines at .
set nojoinspaces

" }}}
" Indent {{{2

" When changing the indent of the current line, preserve as much of the
" indent structure as possible.
set preserveindent

" Vim will wrap long lines at a character in 'breakat' rather than at the last
" character that fits on the screen.
set linebreak

" Every wrapped line will continue visually indented (same amount of space as
" the beginning of that line), thus preserving horizontal blocks of text.
set breakindent

" Copy indent from current line when starting a new line.
set autoindent

" Tab {{{2

" **FTPLUGIN** - can set the tablevel for programing launguages itself. Paste
" will preserve the user defined levels set and the choice of tabs or spaces.

" Converts tab to space. If your using listchars its better to explicitly set
" to noexpand. So the tabs show up.
set expandtab

" Number of spaces that a <Tab> in the file counts for
set tabstop=4

" Number of spaces to use for each step of (auto)indent.
set shiftwidth=4
" Number of spaces to reduce each step of (auto)indent.
set softtabstop=4

" Always indent by multiples of shiftwidth
set shiftround

" at the beginning of the line, insert spaces according to shiftwidth
set smarttab

" List chars {{{2
set list
set listchars=tab:│\ ,trail:•,extends:❯,precedes:❮

" When the terminal is more compact this indicates breaks
set showbreak=↪

" diff and VertSplit devide
set fillchars=diff:⣿
set fillchars=vert:\▏

" }}}
" Folding {{{2

set foldlevelstart=0
set foldenable
set foldmethod=marker
set foldnestmax=5

" Folding character used when folded.
set fillchars=fold:━

" 80 is subtracted by line length to create a fold.
function! MyFoldText()
	let line = getline(v:foldstart)
	let foldedlinecount = v:foldend - v:foldstart
	let separator = 80 - len(line)

	let line_end = foldedlinecount . ' ━ lines │ depth '
	let line_separator = repeat('─', separator - len(line_end)+4)
	let line = substitute(line," \{\{\{",' ' . line_separator . ' ' . line_end,'g')

	" Create the space for after the 80 text width
	let space = 350 - len(line)
	return toupper(line).'…'.repeat(" ",space)

endfunction

set foldtext=MyFoldText()


"}}}
" spelling {{{2
" The active spell checking dictionary, when spell checking is enabled.
set complete+=kspell
set dictionary+=/usr/share/dict/words

" set spell file location
"
set spellfile=~/.config/nvim/spell/custom-dictionary.utf-8.add

" }}}
" }}} end formatting
" Completion {{{1

" set the hight of the completion window
set pumheight=20

" set the with of the completion window
set pumwidth=20

" Use tab for trigger completion with characters ahead and navigate.
" Use command ':verbose imap <tab>' to make sure tab is not mapped by other plugin.
"
function! s:check_back_space() abort
  let col = col('.') - 1
  return !col || getline('.')[col - 1]  =~# '\s'
endfunction

inoremap <silent><expr> <TAB>
      \ pumvisible() ? "\<C-n>" :
      \ <SID>check_back_space() ? "\<TAB>" :
      \ coc#refresh()
inoremap <expr><S-TAB> pumvisible() ? "\<C-p>" : "\<C-h>"
" Use enter to accept snippet expansion
inoremap <expr> <cr> pumvisible() ? "\<C-y>" : "\<CR>"

" Navigate snippet placeholders using tab
let g:coc_snippet_next = '<Tab>'
let g:coc_snippet_prev = '<S-Tab>'


" }}} end completion
" History, ignore and tags {{{1
" undo {{{2
set history=1000
set undofile
set undoreload=10000
if !isdirectory(&undodir) | call mkdir(&undodir, "p") | endif
let &undodir = expand("$XDG_DATA_HOME/nvim/undo//")
" }}}
" swap {{{2
" it's 2013, Vim.
set noswapfile
let &directory = expand("$XDG_DATA_HOME/nvim/swap//")
if !isdirectory(&directory) | call mkdir(&directory, "p") | endif
" }}}
" backup {{{2
set backup
let &backupdir = expand("$XDG_DATA_HOME/nvim/backup//")
if !isdirectory(&backupdir) | call mkdir(&backupdir, "p") | endif
" }}}
" Ignore {{{2

set wildignore+=.hg,.git,.svn                    " Version control
set wildignore+=*.aux,*.out,*.toc                " LaTeX intermediate files
set wildignore+=*.jpg,*.bmp,*.gif,*.png,*.jpeg   " binary images
set wildignore+=*.o,*.obj,*.exe,*.dll,*.manifest " compiled object files
set wildignore+=*/tmp/*,*.so,*.swp,*.zip         " MacOSX/Linux
set wildignore+=*.spl                            " compiled spelling word lists
set wildignore+=*.sw?                            " Vim swap files
set wildignore+=*.DS_Store                       " OSX bullshit
set wildignore+=*.db

set wildignore+=*/node_modules/*,_site,*/__pycache__/,*/venv/*,*/target/*
set wildignore+=*/.vim$,\~$,*/.log,*/.aux,*/.cls,*/.aux,*/.bbl,*/.blg,*/.fls
set wildignore+=*/.fdb*/,*/.toc,*/.out,*/.glo,*/.log,*/.ist,*/.fdb_latexmk

"}}}
" tags {{{2

" This will check the current folder for tags file and keep going one directory
" up all the way to the root folder. So you can be in any sub-folder in your
" project and it'll be able to find the tags files.
set tags=tags;/

" }}}
"}}} end history
" commands {{{2

" Fold current file
command! -nargs=1 Fold :set foldlevel=<args>

" Grep in file for Arg and open quickfix
command -nargs=1 G vimgrep /\v<args>/g % | copen

" Grep in all subdirectory files for Arg and open quickfix
command -nargs=1 GG vimgrep /\v<args>/g **/* | copen

" Correct misspellings.
command! -bang Q q<bang>
command! -bang W w<bang>
command! -bang Wq wq<bang>

command! Gqf GitGutterQuickFix | copen

" }}}
" Aug Commands {{{2
if has("autocmd")
" set spell {{{3

" enable spell only if file type is normal text
let spellable = ['md', 'markdown', 'gitcommit', 'txt', 'text']
autocmd BufEnter * if index(spellable, &ft) < 0 | set nospell | else | set spell | endif

" }}}
" return to line {{{3
" Make sure Vim returns to the same line when you reopen a file.

augroup line_return
	au!
	au BufReadPost *
		\ if line("'\"") > 0 && line("'\"") <= line("$") |
		\     execute 'normal! g`"zvzz' |
		\ endif
augroup END

" }}}
endif
" }}}
" functions {{{1
" Number Toggle {{{2

" when setting paste this would be good to remove.
function! NumberToggle()
	if(&relativenumber == 1)
		set norelativenumber
		set nonumber
		set nolist
	else
		set relativenumber
		set number
		set list
	endif

endfunction

nnoremap <f2> :call NumberToggle()<CR>

" }}}
" open help on word {{{2

" show docs on things with K
function! s:show_documentation()
  if (index(['vim','help'], &filetype) >= 0)
    execute 'h '.expand('<cword>')
  else
    call CocAction('doHover')
  endif
endfunction

nnoremap <silent> K :call <SID>show_documentation()<CR>

" }}}
" note grep {{{2

" Get the line and column. This is so the cursor can be returend to the line.
" Search notes with vims built in grep. Use a word boundary to stop grep looking
" for words inside words like todo - autodone. If the string is not empty and
" the results of the search are not zero, open the quickfix and jump to first
" match,

function! NoteGreper()
	let l = line(".")
	let c = col(".")
	call inputsave()
	let name = input("Grep Notes:>")
	call inputrestore()
	if name != ''
		silent! execute 'vimgrep /\<' .name. '\>' . '/' expand("$HOME")."/.notes/**/*"
		if len(getqflist()) != 0
			copen
		else
			echom "\n"
			echom "Search returned" . " " . len(getqflist()) . " " . "results"
			call cursor(l, c)
		endif
	else
		call cursor(l, c)
	endif
endfunction

nnoremap <leader>n :call NoteGreper()<cr>

" }}}
" NoteTag Grep {{{2

" Get the line and column. This is so the cursor can be returend to the line.
" Search notes with vims built in grep. Use a word boundary to stop grep looking
" for words inside words like todo - autodone. If the string is not empty and
" the results of the search are not zero, open the quickfix and jump to first
" match,

function! TagGreper()
	let l = line(".")
	let c = col(".")
	call inputsave()
	let name = input("Find Tags:>")
	call inputrestore()
	if name != ''
		silent! execute 'vimgrep /[@]\<' .name. '\>' . '/' expand("$HOME")."/.notes/**/*"
		if len(getqflist()) != 0
			copen
		else
			echom "\n"
			echom "Search returned" . " " . len(getqflist()) . " " . "results"
			call cursor(l, c)
		endif
	else
		call cursor(l, c)
	endif
endfunction

" search for tags in notes
nnoremap <leader>xx :call TagGreper()<cr>

" }}}
" }}} end functions
" skeleton file {{{1

autocmd BufNewFile  *.markdown 0r $XDG_CONFIG_HOME/nvim/skeleton/skeleton.md
autocmd BufNewFile  *.md 0r $XDG_CONFIG_HOME/nvim/skeleton/skeleton.md
autocmd BufNewFile  *.txt 0r $XDG_CONFIG_HOME/nvim/skeleton/skeleton.txt
autocmd BufNewFile  *.rb 0r $XDG_CONFIG_HOME/nvim/skeleton/skeleton.rb

" }}}

" Greps through project for the word under the cursor.
nnoremap ? :vimgrep /\<<c-r>=expand('<cword>')<cr>\>/ % \| :copen<CR>

" Copy selected to clipboard
vmap '' :w !pbcopy<CR><CR>

let solirized_italics = 0

" Lua
" maps {{{1

lua require('keymaps.navigation')
lua require('keymaps.change_list')
lua require('keymaps.jump_list')
lua require('keymaps.search')
lua require('keymaps.resize')
lua require('keymaps.telescope')
lua require('keymaps.coc')

" }}}
" Aug Commands {{{1

" require commands
lua require('commands')

" }}}

" Custom Highlights loaded last to avoid clashes
runtime ./colors/custom-highlight-colors.vim

