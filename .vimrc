""""""""""""""""
""" VIM plug """
""""""""""""""""

" Specify a directory for plugins
" more info: https://github.com/junegunn/vim-plug
call plug#begin('~/.vim/plugged')

" Make sure you use single quotes

" Airline plugin with airline themes
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'

" Spacemacs colour theme
Plug 'colepeters/spacemacs-theme.vim'

" Support for easy commenting
Plug 'scrooloose/nerdcommenter'

" Start-up screen
Plug 'mhinz/vim-startify'

" Asynchronous linter for syntax checking
Plug 'w0rp/ale'

" Auto closing of brackets and quotes
Plug 'Raimondi/delimitMate'

" Fuzzy file opening
Plug 'ctrlpvim/ctrlp.vim'

" Rainbow parenthesis
Plug 'luochen1990/rainbow'

" Snippets management system via snip-mate
Plug 'MarcWeber/vim-addon-mw-utils'
Plug 'tomtom/tlib_vim'
Plug 'garbas/vim-snipmate'
Plug 'honza/vim-snippets' " Provides optional snippets library

" Install advanced grammar checking
Plug 'rhysd/vim-grammarous'

" Undo tree visualisation
Plug 'mbbill/undotree'

" Org mode installation
Plug 'jceb/vim-orgmode'
Plug 'tpope/vim-speeddating' 	" Sensibly increases dates in vim-org mode
Plug 'tpope/vim-repeat' 	" Enable repeating of supported plugin maps 
Plug 'vim-scripts/utl.vim' 	" Universal text linking
Plug 'majutsushi/tagbar'  	" Displays tag in a side panel

" NERD tree with supporting icons for git
Plug 'scrooloose/nerdtree'
Plug 'Xuyuanp/nerdtree-git-plugin'

" Add clock to the airline
Plug 'enricobacis/vim-airline-clock'

" Thesaurus to support writing
Plug 'beloglazov/vim-online-thesaurus'

" Add SPARQL support
Plug 'rvesse/vim-sparql'

" Show difference to git files
Plug 'mhinz/vim-signify'

" Add plugin to handle vim templates
Plug 'aperezdc/vim-template'
" Plug 'tibabit/vim-templates'

" Add plugin to handle random notes
" Plug 'xolox/vim-notes'
" Plug 'xolox/vim-misc'  " Required support plugin

" Enable latex folding
Plug 'matze/vim-tex-fold'

" Nord colour scheme
Plug 'arcticicestudio/nord-vim'

" Install nice Solarized them
Plug 'lifepillar/vim-solarized8'

" Vim easy motion
Plug 'easymotion/vim-easymotion'

" GitHub flavoured markdown support
Plug 'gabrielelana/vim-markdown'
Plug 'godlygeek/tabular'
" Plug 'plasticboy/vim-markdown'

" Vim bookmark management
Plug 'MattesGroeger/vim-bookmarks'

" Add single compile support
Plug 'xuhdev/SingleCompile'

" R support
Plug 'jalvesaq/Nvim-R'

" Python support
" Auto indentation
Plug 'vim-scripts/indentpython.vim'
" Autocompletion
Plug 'davidhalter/jedi-vim'
" Python folding
Plug 'tmhedberg/SimpylFold'

" Table creation support
Plug 'dhruvasagar/vim-table-mode'

" Install better json highlighting
Plug 'elzr/vim-json'

" Better markdown support
" Plug 'SidOfc/mkdx'

" Install vim ack support
Plug 'mileszs/ack.vim'

" Install rainbow CSV support
Plug 'mechatroner/rainbow_csv'

" Install solarized
Plug 'altercation/vim-colors-solarized'

" Paper colour scheme
Plug 'NLKNguyen/papercolor-theme'

" Language tool
Plug 'dpelle/vim-LanguageTool'

" Pandoc support
" Plug 'vim-pandoc/vim-pandoc'
" Plug 'vim-pandoc/vim-pandoc-syntax'

" Add bright colour scheme to use with iterm
Plug 'sonph/onehalf', {'rtp': 'vim'}

" Add word type checking 
Plug 'reedes/vim-wordy'

" LaTeX support
Plug 'lervag/vimtex'

" Toml support
Plug 'cespare/vim-toml'

" CSS colours
Plug 'ap/vim-css-color'

" Gruvbox theme
Plug 'morhetz/gruvbox'

" Add Fugitive
Plug 'tpope/vim-fugitive'

" Vim wiki for notetaking
Plug 'vimwiki/vimwiki'

" Add calendar plugin
Plug 'itchyny/calendar.vim'

" Escape Ansi characters in logs
Plug 'vim-scripts/AnsiEsc.vim'

" Initialize plug-in system
call plug#end()

"""""""""""""""""""""""""""""""
""" VIM settings: USABILITY """
"""""""""""""""""""""""""""""""

" re-map global leader key
" http://learnvimscriptthehardway.stevelosh.com/chapters/06.html
let mapleader = ","

" Enable mouse
set mouse=a

" --Backspace
" Make backspace work as in normal editor
set backspace=indent,eol,start
" Map ctrl-bkspc to delete previous word while in insert mode
" http://vim.wikia.com/wiki/Map_Ctrl-Backspace_to_delete_previous_word
imap <C-BS> <C-W>
" --

" Provide convenience command to soft wrap text
" http://vimcasts.org/episodes/soft-wrapping-text/
command! -nargs=* Wrap set wrap linebreak nolist

" Insert current date
nnoremap <F7> "=strftime("%d/%m/%Y")<CR>P
inoremap <F7> <C-R>=strftime("%d/%m/%Y")<CR>

" Insert current date to file
" `date '+%Y_%m_%d__%H_%M_%S'`

"-- Spelling --
" Set locale to British English
set spelllang=en_gb
" Toggle spell checking on and off with `,s`
nmap <silent> <leader>s :set spell!<CR>
"--

" Indicate by highlighting current line whether in insert mode
" https://stackoverflow.com/a/6489348/1655567
autocmd InsertEnter,InsertLeave * set cul!

" Switch on paste on and off
set pastetoggle=<F3>

" Convenintly show invisible characters
noremap <F10> :set list!<CR>
inoremap <F10> <C-o>:set list!<CR>
cnoremap <F10> <C-c>:set list!<CR>

" Help
" Alwys open on the left
autocmd FileType help wincmd L

""""""""""""""""""""""""""""
""" vim settings: SYSTEM """
""""""""""""""""""""""""""""

" -- vim snippets --
" Change to Ctrl + Return
" let g:snips_trigger_key = '<C-CR>'
" --

" -- Plugin support --
filetype indent plugin on
set nocompatible
" --

" -- Open panels to the right
set splitright
" --

" -- Folding --
" Enable folding by syntax
set foldmethod=syntax
" Do not automatically fold sections: http://vim.wikia.com/wiki/All_folds_open_when_opening_a_file
" set nofoldenable
set foldlevelstart=99
" Enable folding for R
let r_syntax_folding = 1
" Do not fold on start
set nofoldenable
" --

" -- History --
" Set undo files directories
set undodir=~/.vim/.undo//
set backupdir=~/.vim/.backup//
set directory=~/.vim/.swp//
" --

" Start persistent undo history
" https://stackoverflow.com/a/9752342/1655567
set undofile
" --

" -- Disable automatic comment insertion
"    https://superuser.com/a/271024/270754
autocmd FileType * setlocal formatoptions-=c formatoptions-=r formatoptions-=o
" --

" -- Show matching options in the airline
set wildmenu
set wildmode=full
set showcmd
" --

" -- Extension specific settings
" https://robots.thoughtbot.com/wrap-existing-text-at-80-characters-in-vim
" Hard wrap text files at 80 characters
" au BufRead,BufNewFile *.txt setlocal textwidth=80
au BufRead,BufNewFile *.ipynb setlocal
			\ syntax=json

" Soft wrap for markdown files
au BufRead,BufNewFile *.{md,txt} setlocal 
			\ filetype=markdown
			\ tabstop=2
			\ wrap 
			\ linebreak 
			\ nolist 
			\ colorcolumn=0

" Enable expression-based folding for LaTeX files
au BufRead,BufNewFile *.tex setlocal foldmethod=expr
" Set smaller tabspace for sparql files
au BufRead,BufNewFile *.sparql setlocal tabstop=2
" Set indetation for python
au BufRead,BufNewFile *.py setlocal
			\ tabstop=4
			\ softtabstop=4
			\ shiftwidth=4
			\ textwidth=79
			\ expandtab
			\ autoindent
			\ fileformat=unix
" Set indetation for R language
au BufRead,BufNewFile *.R setlocal
			\ softtabstop=2
			\ tabstop=2
			\ expandtab


" Set configuration for YMAL files
au BufRead,BufNewFile *.{yaml,yml} setlocal
			\ filetype=yaml 
			\ foldmethod=indent 
			\ tabstop=2 
			\ sts=2 
			\ sw=2 
			\expandtab
" --

" -- Spell check --
" Enable spell check for selected file types
autocmd FileType latex,tex,md,markdown,org,gitcommit setlocal spell
" --

" -- Search
" Ignore case by default 
set ignorecase smartcase showmatch hlsearch
" Toggle highlighting of search findings using F4
" http://vim.wikia.com/wiki/Highlight_all_search_pattern_matches
noremap <F4> :set hlsearch! hlsearch?<CR>
" --

" -- Clipboard
" Activate system clipboard
" http://vim.wikia.com/wiki/Mac_OS_X_clipboard_sharing
set clipboard=unnamed
nmap <F2> :.w !pbcopy<CR><CR>
vmap <F2> :w !pbcopy<CR><CR>
map <F3> :r !pbpaste<CR>
" --

" -- Wildignore
" Ignore certain files of pointless types and temporary folders
set wildignore+=*/tmp/*,*.so,*.swp,*.zip
" --

" -- Performance --
" Buffer screen and redraw bits when possible
set lazyredraw
" --

" -- Other -- 
" Set working directory to current file
set autochdir
" --

" Configure compilation of C++ programs from command line
" disable due to single compile plugin
" http://www.alexeyshmalko.com/2014/using-vim-as-c-cpp-ide/
" set makeprg=make\ -C\ ../build\ -j9
" Configure compilation to F9
" https://stackoverflow.com/a/25467421/1655567
" nnoremap <F9> :w<CR> :!g++ % -o %<.x -Wall -Wextra 2>errors.err; cat errors.err<CR>

"""""""""""""""""""""""""""""
""" vim settings: VISUAL """"
"""""""""""""""""""""""""""""

" Colour scheme check, necessary for spacemacs
" if (has("termguicolors"))
  " set termguicolors
" endif
" set background=dark
" colorscheme spacemacs-theme
" set cursorline

let g:gruvbox_italic=1
colorscheme gruvbox
let g:airline_theme='gruvbox'

" Show relative line numbers
" https://jeffkreeftmeijer.com/vim-number/
set number relativenumber

" Show column at the 80 character
set colorcolumn=80

" Do not show --visual-- etc.
" https://stackoverflow.com/a/51126577/1655567
set noshowmode

" When wrapping lines, show +++
set showbreak=+++

" Force italicised comments only if suitable term is available
" https://alexpearce.me/2014/05/italics-in-iterm2-vim-tmux/
if $TERM=~'xterm-256color-italic'
	highlight Comment 	cterm=italic
	highlight Italic 	cterm=italic
	highlight htmlItalic 	cterm=italic
	highlight htmlBold 	cterm=bold
endif

" Ensure that spelling mistakes are underline
" https://stackoverflow.com/a/6009026/1655567
hi clear SpellBad
hi SpellBad cterm=underline

" Enable conceal 
set conceallevel=2

"""""""""""""""""""""""""""""""""
""" plug-in specific settings """
"""""""""""""""""""""""""""""""""

" -- vim wiki --
" Nested syntax highlighting
let wiki = {}
let wiki.path = '~/vimwiki/'
let wiki.nested_syntaxes = {'python': 'python', 'c++': 'cpp', 'sh': 'sh'}
let g:vimwiki_list = [wiki]

" -- Tagbar --
" Toggle TagBar on and off
nmap <F8> :TagbarToggle<CR>
" --

" Startify configuration
" Automatically update session before leaving vim
let g:startify_session_persistence = 1
" Use unicode charcters when drawing the startify box
let g:startify_fortune_use_unicode = 1
" --

" -- Rainbow parenthesis --
let g:rainbow_active = 0
" --

" -- vim airline settings --
" Enable tabs
let g:airline#extensions#tabline#enabled = 1
" Set airline theme
" let g:airline_theme='base16_spacemacs'
" Get symbol
let g:airline_powerline_fonts = 1
" Integrate ALE linter with airline
let g:airline#extensions#ale#enabled = 1
" ---

" -- ALE Settings --
" let g:ale_sign_error = '>>'
" let g:ale_sign_warning = '--'
" highlight clear ALEErrorSign
" highlight clear ALEWarningSign
" Disable ALE for vimWiki
let g:ale_pattern_options = {
			\   '.*\.wiki$': {'ale_enabled': 0},
			\   '.*some/folder/.*\.js$': {'ale_enabled': 0},
			\}
" --

" -- nerd commenter --
" add one space before comment 
let g:NERDSpaceDelims = 1
" Allow commenting and inverting empty lines (useful when commenting a region)
let g:NERDCommentEmptyLines = 1
" --

" -- Undotree settings
" Key map
nnoremap <F5> :UndotreeToggle<CR>
" --

" -- Grammarous settings --
" Only comments with excetion of text files
let g:grammarous#default_comments_only_filetypes = {
            \ '*' : 1, 'help' : 0, 'markdown' : 0, 'text' : 0,
            \ }
" Force opening information window on first error
let g:grammarous#show_first_error = 1
" --

" -- NERD tree --
" Use F6 to open and close NERD tree
map <F6> :NERDTreeToggle<CR>
" --

" -- Markdown support --
" Enable conceal for italics and bold
let g:markdown_enable_conceal = 1

" --

" -- VIM Org Mode --
" Aggressive conceal
let g:org_aggressive_conceal = 1
" --

" -- Thesaurus --
" Disable leader cs as it conflicts with remaining plugins
let g:tq_map_keys=0
" Map current word replacement shortcut
nnoremap <Leader>ct :ThesaurusQueryReplaceCurrentWord<CR>
vnoremap <Leader>ct y:ThesaurusQueryReplace <C-r>"<CR>
" --

" -- Vim templates --
" Configure additional directory to keep vim templates
" let g:tmpl_search_paths = ['~/.vim/vim-templates']
" let g:tmpl_author_email = 'konrad.zdeb@me.com'
let g:templates_directory = ['~/.vim/vim-templates']
" Define functions changing some of the variables in vim-template
let g:username = 'Konrad'
let g:email = 'konrad.zdeb@me.com'
" --

" -- Configure notes behaviour --
" Notes directory in Documents
let g:notes_directories = ['~/Documents/Notes']
" Save notes as markdown
let g:notes_suffix = '.md'
" Consider word boundaries
let g:notes_word_boundaries = 1
" --

" -- Single Compile --
" single compile shortcuts
nmap <F9> :SCCompile<cr>
nmap <F10> :SCCompileRun<cr>
" --

" -- Markdown Support
" Autofit TOC
let g:vim_markdown_toc_autofit = 1
" --

" -- Nvim R operator
let R_assign_map = '-=-'
" --

" -- ALE linter settings

" --

" mkdx markdown support
" let g:mkdx#settings = { 'map': { 'prefix': '<leader>' } }
" --

"""""""""""""""""""""""""
""" bespoke functions """
"""""""""""""""""""""""""

" Source function from VimL folder
source /Users/huski/Documents/Developer/VimL/insert_section_break.vim

" -- Quit and clear screen --
" as per: https://stackoverflow.com/a/31619016/1655567
" Use :Qc to exit and clear
command! Qc :call ClearAndExit()
" Force overwrite to prevent error when refreshing vim
function! ClearAndExit()
    :!clear
    :q!
endfunction
" --

" -- Switch to NORD scheme --
function! NordActivate()
	set termguicolors
	let g:nord_italic = 1
	let g:nord_underline = 1
	let g:nord_italic_comments = 1
	let g:nord_cursor_line_number_background = 1
	let g:airline_theme = 'nord'
	colorscheme nord
	AirlineRefresh
	" Change one annoying highlight colour
	highlight Conceal guibg=#333742
endfunction
command! NordAct :call NordActivate()
" --

" -- Switch to brigh Solarized theme --
function! SolarizedBrightActivate()
	let g:solarized_term_italics = 1
	let g:solarized_old_cursor_style = 1 
	set background=light
	let g:airline_theme = 'solarized'
	let g:solarized_extra_hi_groups = 1
	AirlineRefresh
	colorscheme solarized8_high
endfunction
command! SolarAct :call SolarizedBrightActivate()
" --

" -- Switch to OneLight Scheme --
function! OneLightActivate()
	colorscheme onehalflight
	" let g:airline_powerline_fonts = 1
	let g:airline_theme='onehalflight'
	AirlineRefresh
endfunction
command! OneLightAct :call OneLightActivate()
" --

" -- Switch to GruvBox theme --
function! GruvBoxTheme()
	let g:gruvbox_italic=1
	colorscheme gruvbox
	let g:airline_theme='gruvbox'
	AirlineRefresh
endfunction
command! GruvBoxActivate :call GruvBoxTheme()

" Save file with the current date
" https://stackoverflow.com/a/25183581/1655567
function! SaveWithTS(filename) range
	let l:extension = '.' . fnamemodify( a:filename, ':e' )
	if len(l:extension) == 1
		let l:extension = '.txt'
	endif
	let l:filename = escape( fnamemodify(a:filename, ':r') . strftime(" - %Y-%m-%d_%H-%M") . l:extension, ' ' )
	execute "write " . l:filename
endfunction
command! -nargs=1 SWT call SaveWithTS( <q-args> )
" --

" Append modeline after last line in buffer.
" Use substitute() instead of printf() to handle '%%s' modeline in LaTeX
" files.
" Modeline function in vim, will add current file settings
function! AppendModeline()
  let l:modeline = printf(" vim: set ts=%d sw=%d tw=%d %set :",
        \ &tabstop, &shiftwidth, &textwidth, &expandtab ? '' : 'no')
  let l:modeline = substitute(&commentstring, "%s", l:modeline, "")
  call append(line("$"), l:modeline)
endfunction
nnoremap <silent> <Leader>ml :call AppendModeline()<CR>

" -- Create underline and overline
" https://vim.fandom.com/wiki/Create_underlines,_overlines,_and_strikethroughs_using_combining_characters
" modify selected text using combining diacritics
command! -range -nargs=0 Overline        call s:CombineSelection(<line1>, <line2>, '0305')
command! -range -nargs=0 Underline       call s:CombineSelection(<line1>, <line2>, '0332')
command! -range -nargs=0 DoubleUnderline call s:CombineSelection(<line1>, <line2>, '0333')
command! -range -nargs=0 Strikethrough   call s:CombineSelection(<line1>, <line2>, '0336')

function! s:CombineSelection(line1, line2, cp)
  execute 'let char = "\u'.a:cp.'"'
  execute a:line1.','.a:line2.'s/\%V[^[:cntrl:]]/&'.char.'/ge'
endfunction

""""""""""""""
""" macros """
""""""""""""""

" Markdown level 3 paragraph
let @p = 'i ### '
