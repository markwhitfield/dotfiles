set nocompatible              " be iMproved, required
filetype off                  " required

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim/
call vundle#begin()
" alternatively, pass a path where Vundle should install bundles
"let path = '~/some/path/here'
"call vundle#rc(path)

" let Vundle manage Vundle, required
Bundle 'gmarik/Vundle.vim'

" The following are examples of different formats supported.
" Keep bundle commands between here and filetype plugin indent on.
" scripts on GitHub repos
Bundle 'tpope/vim-fugitive'
Bundle 'Lokaltog/vim-easymotion'
" The sparkup vim script is in a subdirectory of this repo called vim.
" Pass the path to set the runtimepath properly.
Bundle 'rstacruz/sparkup', {'rtp': 'vim/'}
" scripts from http://vim-scripts.org/vim/scripts.html
Bundle 'L9'
Bundle 'FuzzyFinder'
Bundle 'ScrollColors'
" scripts not on GitHub
"Bundle 'git://git.wincent.com/command-t.git'
Bundle 'scrooloose/syntastic'
Bundle 'scrooloose/nerdtree'
Bundle 'scrooloose/nerdcommenter'
Bundle 'klen/rope-vim'
Bundle 'bling/vim-airline'
Bundle 'majutsushi/tagbar'
"Bundle 'bitc/vim-hdevtools'
Bundle 'eagletmt/ghcmod-vim'
Bundle 'dag/vim2hs'
Bundle 'eagletmt/neco-ghc'
Bundle 'godlygeek/tabular'
Bundle 'Twinside/vim-haskellConceal'
Bundle 'altercation/vim-colors-solarized'
"Bundle 'klen/python-mode'
Bundle 'hdima/python-syntax'
Bundle 'Shougo/vimproc.vim'
Bundle 'Lokaltog/vim-distinguished'
Bundle 'SirVer/ultisnips'
Bundle 'honza/vim-snippets'
Bundle 'kien/rainbow_parentheses.vim'
Bundle 'bitc/lushtags'
Bundle 'vim-scripts/Haskell-Conceal'
Bundle 'pbrisbin/html-template-syntax'
Bundle 'mattn/emmet-vim'
Bundle 'Valloric/YouCompleteMe'
Bundle 'kien/ctrlp.vim'
Bundle 'ervandew/screen'
Bundle 'Chiel92/vim-autoformat'
Bundle 'tell-k/vim-autopep8'
Bundle 'vim-scripts/Color-Scheme-Test'
Bundle 'davidhalter/jedi-vim'
Bundle 'wting/rust.vim'
Bundle 'guns/vim-clojure-static'
Bundle 'tpope/vim-fireplace'
Bundle 'pangloss/vim-javascript'
"Bundle 'kchmck/vim-coffee-script'
"Bundle 'mtscout6/vim-cjsx'
Bundle 'jelera/vim-javascript-syntax'
Bundle 'mxw/vim-jsx'
Bundle 'groenewege/vim-less'
Bundle 'sickill/vim-sunburst'
Bundle 'tomasr/molokai'
Bundle 'flazz/vim-colorschemes'
Bundle 'notpratheek/Pychimp-vim'
Bundle 'marijnh/tern_for_vim'
Bundle 'briancollins/vim-jst'
Bundle 'hynek/vim-python-pep8-indent'
Bundle 'chase/vim-ansible-yaml'

call vundle#end()
filetype plugin indent on     " required
"
" Brief help
" :BundleList          - list configured bundles
" :BundleInstall(!)    - install (update) bundles
" :BundleSearch(!) foo - search (or refresh cache first) for foo
" :BundleClean(!)      - confirm (or auto-approve) removal of unused bundles
"
" see :h vundle for more details or wiki for FAQ
" NOTE: comments after Bundle commands are not allowed.
"
syntax enable
set tabstop=2                   "A tab is 8 spaces
set expandtab                   "Always uses spaces instead of tabs
set softtabstop=2               "Insert 4 spaces when tab is pressed
set shiftwidth=2                "An indent is 4 spaces
set smarttab                    "Indent instead of tab at start of line
set shiftround                  "Round spaces to nearest shiftwidth multiple
set backspace=2
set nojoinspaces                "Don't convert spaces to tabs
set number
set mouse=a
set colorcolumn=80
set hlsearch
let mapleader=","
let maplocalleader=","
" Color conf
set background=dark
colorscheme jelleybeans
highlight ColorColumn ctermbg=8

" Airline conf
let g:airline_powerline_fonts = 1
set ttimeoutlen=50
set laststatus=2

" UltiSnips conf
let g:UltiSnipsListSnippets="<leader><tab>"

" RainbowParens
au VimEnter * RainbowParenthesesToggle
au Syntax * RainbowParenthesesLoadRound
au Syntax * RainbowParenthesesLoadSquare
au Syntax * RainbowParenthesesLoadBraces

" Ctrl-P conf
set wildignore+=*/bin/*,*/lib/*,*/target/*,*/node_modules/*

" YouCompleteMe conf
noremap <leader>g :YcmCompleter GoToDefinitionElseDeclaration<CR>
let g:ycm_autoclose_preview_window_after_completion=1
let g:ycm_server_keep_logfiles=1
let g:ycm_path_to_python_interpreter = '/usr/local/bin/python'

let g:tern_show_argument_hints='on_hold'

" Leader shortcuts
nnoremap <leader>n :NERDTreeToggle<CR>
nnoremap <leader><Space> :nohlsearch<CR>
nnoremap <leader>h <C-w>h
nnoremap <leader>j <C-w>j
nnoremap <leader>k <C-w>k
nnoremap <leader>l <C-w>l
nnoremap <leader>w :GhcModType<CR>
nnoremap <leader>t :TagbarToggle<CR>
inoremap ;; <ESC>

let g:syntastic_haskell_ghc_mod_exec = "/Users/mwhitfield/Library/Haskell/bin/ghc-mod"
let g:necoghc_enable_detailed_browse = 1
let g:necoghc_debug = 1
let g:neocomplcache_enable_at_startup = 1

let python_highlight_all=1
let g:syntastic_python_checkers = ['prospector', 'python']
let g:syntastic_javascript_checkers = ['eslint']
let g:syntastic_coffee_checkers = []

" UltiSnips conf
" YCM takes over TAB and prevents snips triggering
let g:UltiSnipsExpandTrigger="<c-j>"

" NERDTree conf
let NERDTreeIgnore = ['\.pyc$', '__pycache__']

" jedi-vim {
" We need to disable all the completion stuff so we don't step on YCM's toes
        let g:jedi#auto_vim_configuration = 0
        let g:jedi#popup_on_dot = 0
        let g:jedi#popup_select_first = 0
        let g:jedi#completions_enabled = 0
        let g:jedi#completions_command = ""
        let g:jedi#show_call_signatures = "1"

        let g:jedi#goto_assignments_command = "<leader>pa"
        let g:jedi#goto_definitions_command = "<leader>pd"
        let g:jedi#documentation_command = "<leader>pk"
        let g:jedi#usages_command = "<leader>pu"
        let g:jedi#use_tabs_not_buffers = 0
        let g:jedi#use_splits_not_buffers = "bottom"
        let g:jedi#rename_command = "<leader>pr"
    " }

au BufRead,BufNewFile *.pyx   set filetype=python
au FileType python setl sw=2 sts=2 ts=2

let g:tern_map_keys=1
