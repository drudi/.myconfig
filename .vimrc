set nocompatible              " be iMproved, required
filetype off                  " required

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

    " let Vundle manage Vundle, required
    Plugin 'VundleVim/Vundle.vim'

    " Keep Plugin commands between vundle#begin/end.

    " NERDTree sidebar
    Plugin 'scrooloose/nerdtree'

    " plugin on GitHub repo
    Plugin 'tpope/vim-fugitive'

    " CTRL+P (Goto file)
    Plugin 'kien/ctrlp.vim'

    " Barra de status
    Plugin 'bling/vim-airline'

    " PHP
    Plugin 'spf13/PIV'

    " Tema de cores
    Plugin 'cdmedia/itg_flat_vim'
    Plugin 'raphamorim/lucario'
    Plugin 'tomasr/molokai'

    " Manipulacao de delimitadores
    Plugin 'tpope/vim-surround'

    " File nevigation
    Plugin 'tpope/vim-vinegar'

    " Snipets
    Plugin 'mattn/emmet-vim'

    " Highlight and handle whitespaces
    Plugin 'ntpeters/vim-better-whitespace'

    " Identacao
    Plugin 'Yggdroot/indentLine'
    Plugin 'nathanaelkane/vim-indent-guides'

    " Support for elm-lang
    Plugin 'lambdatoast/elm.vim'

" All of your Plugins must be added before the following line
call vundle#end()            " required
"filetype plugin indent on    " required
" To ignore plugin indent changes, instead use:
filetype plugin on

" Brief help
" :PluginList       - lists configured plugins
" :PluginInstall    - installs plugins; append `!` to update or just :PluginUpdate
" :PluginSearch foo - searches for foo; append `!` to refresh local cache
" :PluginClean      - confirms removal of unused plugins; append `!` to
"                     auto-approve removal

" see :h vundle for more details or wiki for FAQ
" Put your non-Plugin stuff after this line

syn on
set tabstop=4
set shiftwidth=4
set expandtab
set smartindent
set autoindent

" Colorschemes
" colorscheme molokai
colorscheme itg_flat
" colorscheme lucario

" Show linenumbers
set number

" Tamanho do histórico de comandos
set history=1000

" Tamanho do histórico de Undos
set undolevels=1000

filetype plugin indent on

" Shortcuts
    " Navigate between splits
        nnoremap <C-h> <C-w>h
        nnoremap <C-j> <C-w>j
        nnoremap <C-k> <C-w>k
        nnoremap <C-l> <C-w>l
    " Toggle display line numbers
        map <A-l> :set number!<CR>

" Show unprintable character
" set list          " Display unprintable characters f12 - switches
set listchars=eol:$,tab:>-,trail:~,extends:>,precedes:<

" Plugin configuration section
"
    " Airline
    " Make airline appear at all times, not only on splits
    set laststatus=2

    " NERDTree
    " Open /Close NERDTree
    map <D-1> :NERDTreeToggle<CR>
    let NERDTreeHijackNetrw = 0
