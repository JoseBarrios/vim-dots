"-----------------
" VUNDLE PLUGINS:
"------------------
set nocompatible " be iMproved, required"
filetype off " required

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

" let Vundle manage Vundle, required
Plugin 'gmarik/Vundle.vim'

" GENERAL FORMATTING:
""""""""""""""""""
" Automatic closing of quotes, parentesis, brackets, etc
Plugin 'Raimondi/delimitMate'
" Sets sensible defaults
Plugin 'tpope/vim-sensible'
" Preview hex colors
Plugin 'ap/vim-css-color'
" Pretty-up code
" JS Docs auto comment
Plugin 'heavenshell/vim-jsdoc'
" LANGUAGE:
""""""""""""""""""
" Autocomplete with tab, uses snippets:
"Plugin 'SirVer/ultisnips'
"Plugin 'honza/vim-snippets'
" Auto complete for JS (and maybe C based langages, if you want)
"Plugin 'Valloric/YouCompleteMe'
" JsX
Plugin 'chemzqm/vim-jsx-improve'
" Go
Plugin 'fatih/vim-go'
" Yaml
" Plugin 'stephpy/vim-yaml'
" Cloudformation
Plugin 'm-kat/aws-vim'
" Git ignore
Plugin 'gisphm/vim-gitignore'
" Python
Plugin 'klen/python-mode'
Plugin 'psf/black'
Plugin 'nvie/vim-flake8'
"Plugin 'jmcantrell/vim-virtualenv'
" Pug
Plugin 'digitaltoad/vim-pug'
" Ansible
Plugin 'pearofducks/ansible-vim'


" IDE:
" Comment lines faster
Plugin 'scrooloose/nerdcommenter'
" On request snippets templates
Plugin 'mattn/emmet-vim'
" Coc / Intelisense
Plugin 'neoclide/coc.nvim'
" Linting
Plugin 'mitermayer/vim-prettier'
" mkdir -p ~/.vim/pack/plugins/start
" git clone https://github.com/prettier/vim-prettier ~/.vim/pack/plugins/start/vim-prettier
" ESLint errors and warnings
Plugin 'dense-analysis/ale'
" Solarized as a package
Plugin 'lifepillar/vim-solarized8'
" File Treeview
Plugin 'scrooloose/nerdtree'
" Treeview + git
Plugin 'Xuyuanp/nerdtree-git-plugin'
" Tagline / vim editor footer with info
Plugin 'edkolev/tmuxline.vim'
" Buffer tabs
Plugin 'mkitt/tabline.vim'
" Status bar improvements
Plugin 'bling/vim-airline'
Plugin 'vim-airline/vim-airline-themes'
" IDE-like go-to definition
"Plugin 'ludovicchabant/vim-gutentags'
"Plugin 'skywind3000/gutentags_plus'
" Tag bar
Plugin 'majutsushi/tagbar'
" Indent guides
Plugin 'nathanaelkane/vim-indent-guides'
" Fonts
Plugin 'ryanoasis/nerd-fonts'
" brew tap homebrew/cask-fonts && brew install --cask font-hack-nerd-font
" Icons
Plugin 'ryanoasis/vim-devicons'
" Fuzzy directory finding
Plugin 'junegunn/fzf.vim'

" FILE PARSE AND FORMAT SUPPORT:
""""""""""""""""""
" CSV support
Plugin 'chrisbra/csv.vim'
 "cd ~/.vim/bundle/coc.nvim && npm install
 "mkdir -p ~/.vim/pack/coc/start
 "cd ~/.vim/pack/coc/start
 "curl --fail -L https://github.com/neoclide/coc.nvim/archive/release.tar.gz|tar xzfv -
 "IN VIM :call coc#util#install()
" REFERENCE: https://github.com/neoclide/coc.nvim/issues/651

" VERSIONING SUPPORT:
""""""""""""""""""
" GitHub gutter sinage
Plugin 'airblade/vim-gitgutter'
" Undo history tree
Plugin 'sjl/gundo.vim'
" Github
Plugin 'tpope/vim-fugitive'
Plugin 'tpope/vim-rhubarb'

" NAVIGATION AND SEARCH:
""""""""""""""""""
" Easier navegation by jumping to matching character
Plugin 'Lokaltog/vim-easymotion'
" Window/Layout manager
Plugin 'wesQ3/vim-windowswap'
" Grep like
Plugin 'jremmen/vim-ripgrep'
" Open terminal window inside editor
Plugin 'voldikss/vim-floaterm'

" DOCSETS:
"""""""""""""""""""
Plugin 'rizzatti/dash.vim'

" Tagline Outline
" All of your Plugins must be added before the following line
call vundle#end()            " required
filetype plugin indent on    " required
" Put your non-Plugin stuff after this line
"------------------------------------------------------------------------

set smartindent
set encoding=UTF-8

" VIM FOLDERS:
"------------------------------------------------------------------------
" Keep all swap files in a single dir
set swapfile
set backupdir=~/.vim/backups
set dir=~/.vim/swaps
set undodir=~/.vim/undo

" Prettier loader
packloadall


" MAPPINGS:
"------------------------------------------------------------------------
"
"Commands                        Mode
"--------                        ----
"nmap, nnoremap, nunmap          Normal mode
"imap, inoremap, iunmap          Insert and Replace mode
"vmap, vnoremap, vunmap          Visual and Select mode
"xmap, xnoremap, xunmap          Visual mode
"smap, snoremap, sunmap          Select mode
"cmap, cnoremap, cunmap          Command-line mode
"omap, onoremap, ounmap          Operator pending mode

let mapleader = ","
" WINDOW SWAP
map <silent> <leader>ww :call WindowSwap#EasyWindowSwap()<CR>
" GUNDO
nmap <silent> <C-u> :GundoToggle<CR>
" NERDTree
nmap <silent> <C-n> :NERDTreeToggle<CR>
" TAGBAR
nmap <silent> <C-t> :TagbarToggle<CR>
" Terminal
let g:floaterm_keymap_toggle = '<C-t>'
" Fuzzy search
nmap <silent> <C-f> :Files<CR>


" Cloudformation validation
" let g:AWSVimValidate = 1 (need to test if it works properly first)

" EASY MOTION
 nmap f <Plug>(easymotion-s)

" Disallow use of space or backspace (bad habit)
nmap <BS> <Nop>
nmap <Del> <Nop>
nmap <Space> <Nop>

" GENERAL
nmap <C-h> :wincmd h<CR>
nmap <C-l> :wincmd l<CR>
nmap <C-k> :wincmd k<CR>
nmap <C-j> :wincmd j<CR>
map <Leader>l :tabnext<CR>
map <Leader>j :tabprev<CR>
nmap <Leader>r :Refresh<CR>
nmap <Leader>q :wq<CR>
nmap <Leader>w :wall<CR>
nmap <Leader>^ :res -5<CR>
nmap <Leader>v :res +5<CR>
nmap <Leader>> :vertical resize +5<CR>
nmap <Leader>< :vertical resize -5<CR>

" VIM PROPERTIES:
""------------------------------------------------------------------------
set undofile
set undolevels=1000 "maximum number of changes that can be undone
set undoreload=1000 "maximum number lines to save for undo on a buffer
" set number        " display line numbers
set number relativenumber " display relative line numbers and normal line numbers"
set hlsearch " Highlight search matches"
set tabstop=2 shiftwidth=2 expandtab
set scrolloff=30
set autowrite " Saves buffers when switching to others -saves a save"
set lcs=tab:▸\ ,trail:·,eol:¬,nbsp:_ " show “invisible” characters

" PLUGINS CUSTOMIZATION:
""------------------------------------------------------------------------

" JSDocs
let g:jsdoc_allow_input_prompt = 1
let g:jsdoc_input_description = 1
let g:jsdoc_access_descriptions = 1
let g:jsdoc_underscore_private = 1
let g:jsdoc_param_description_separator = "-"
let g:jsdoc_enable_es6 = 1

" Filetype detection, plugins, and indent rules
filetype plugin indent on
" Spell check and line wrap just for git commit messages

" SNIPPET AUTOCOMPLETE (with tab)
let g:UltiSnipsExpandTrigger="<tab>"
let g:UltiSnipsJumpForwardTrigger="<c-b>"
let g:UltiSnipsJumpBackwardTrigger="<c-z>"

" AIRLINE
let g:airline_theme = 'sol'
let g:airline#extensions#branch#enabled = 1
"let g:airline#extensions#csv#enabled = 1
"let g:airline#extensions#tmuxline#enabled = 1
let g:airline#extensions#ale#enabled = 1
let g:airline#extensions#tabline#enabled = 1
let g:airline_powerline_fonts=1

" GUTTER
let g:gitgutter_max_signs=10000000
let g:gitgutter_highlight_lines = 1

" MACVIM
let macvim_skip_colorscheme=1

" IDE / CTAGS
" REQUIRES: brew install ctags-exuberant global
" enable gtags module
let g:gutentags_modules = ['ctags', 'gtags_cscope']
" config project root markers.
let g:gutentags_project_root = ['.git']
" generate datebases in my cache directory, prevent gtags files polluting my project
let g:gutentags_cache_dir = expand('~/.cache/tags')

" change focus to quickfix window after search (optional).
let g:gutentags_plus_switch = 1
let g:gutentags_plus_nomap = 1
let g:gutentags_define_advanced_commands = 1
noremap <silent> <leader>gs :GscopeFind s <C-R><C-W><cr>
noremap <silent> <leader>gg :GscopeFind g <C-R><C-W><cr>
noremap <silent> <leader>gc :GscopeFind c <C-R><C-W><cr>
noremap <silent> <leader>gt :GscopeFind t <C-R><C-W><cr>
noremap <silent> <leader>ge :GscopeFind e <C-R><C-W><cr>
noremap <silent> <leader>gf :GscopeFind f <C-R>=expand("<cfile>")<cr><cr>
noremap <silent> <leader>gi :GscopeFind i <C-R>=expand("<cfile>")<cr><cr>
noremap <silent> <leader>gd :GscopeFind d <C-R><C-W><cr>
noremap <silent> <leader>ga :GscopeFind a <C-R><C-W><cr>

" CUSTOM COMMANDS:
""------------------------------------------------------------------------
" Updates vim with the latest vimrc
com! Refresh w | so ~/.vimrc
"com! AF Autoformat
"com! HTMLFormat !tidy -mi -html %
"com! JSONFormat %!python -m json.tool

" AUTOCOMMANDS
" Gets rid of white space on save
autocmd BufWritePre * :%s/\s\+$//e
" Remember the last line before closing file
autocmd BufReadPost * call setpos(".", getpos("'\""))

"  SOLARIZED SETTINGS:
"------------------------------------------------------------------------
syntax enable
set t_Co=256
set background=dark
let g:solarized_termcolors=256
let g:solarized_termtrans = 1
colorscheme solarized8
" Custom line column colours
highlight LineNr ctermbg=NONE ctermfg=59
highlight SignColumn ctermbg=NONE guibg=NONE
highlight GitGutterAdd ctermfg=green guifg=green
highlight GitGutterChange ctermfg=yellow guifg=yellow
highlight GitGutterDelete ctermfg=red guifg=red
highlight GitGutterChangeDelete ctermfg=yellow guifg=yellow
"------------------------------------------------------------------------
"  FORMATTING SETTINGS:
"------------------------------------------------------------------------
autocmd BufRead,BufNewFile * setlocal textwidth=80 colorcolumn=80
" Enable spell :set spell
"set complete+=kspell
"set spell spelllang=en_ca

let g:ale_javascript_prettier_use_local_config = 1
let g:ale_sign_error = '🔥'
let g:ale_sign_warning = '⚠️ '
highlight clear ALEErrorSign
highlight clear ALEWarningSign
let g:ale_fixers = ['prettier', 'eslint']
let g:ale_echo_msg_error_str = 'E'
let g:ale_echo_msg_warning_str = 'W'
let g:ale_echo_msg_format = '[%linter%] %s [%severity%]'

let g:ale_fix_on_save = 0
let g:ale_sign_column_always = 1
let g:ale_lint_on_insert_leave = 0
let g:ale_lint_on_enter = 0
let g:ale_completion_enabled = 1
let g:ale_exclude_highlights = 0

" when running at every change you may want to disable quickfix
let g:prettier#autoformat = 1
let g:prettier#quickfix_enabled = 1
let g:prettier#quickfix_auto_focus = 0
autocmd BufWritePre *.js,*.jsx,*.mjs,*.ts,*.tsx,*.css,*.less,*.scss,*.json,*.graphql,*.md,*.vue,*.yaml,*.html PrettierAsync

" Only set cursor in current window, not all
augroup CursorLine
  au!
  au VimEnter,WinEnter,BufWinEnter * setlocal cursorline
  au WinLeave * setlocal nocursorline
augroup END

" OS X copy-paste support
set clipboard=unnamed

" Make the Fuzzer work
set rtp+=/usr/local/opt/fzf
" Interface for fuzzer
let g:fzf_preview_window = 'right:50%'
let g:fzf_layout = { 'window': { 'width': 0.9, 'height': 0.6  }  }

" Floating terminal window
let g:floaterm_width = 0.75
let g:floaterm_height = 0.75

"------------------------------------------------------------------------
"  PYTHON SETTINGS:
"------------------------------------------------------------------------

let python_highlight_all=1
syntax on
" Format Python on save using Black
"autocmd BufWritePre *.py execute ':Black'


" Use Fugitive to review the last Git commit. Call :ReviewLastCommit() to use it
function! ReviewLastCommit()
  if exists('b:git_dir')
    Gtabedit HEAD^{}
    nnoremap <buffer> <silent> q :<C-U>bdelete<CR>
  else
    echo 'No git a git repository:' expand('%:p')
  endif
endfunction
