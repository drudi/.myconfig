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
    Plugin 'jistr/vim-nerdtree-tabs'

    " plugin on GitHub repo
    Plugin 'tpope/vim-fugitive'

    " CTRL+P (Goto file)
    Plugin 'kien/ctrlp.vim'

    " Barra de status
    Plugin 'bling/vim-airline'
    Plugin 'vim-airline/vim-airline-themes'

    " PHP
    " Plugin 'spf13/PIV'

    " Tema de cores
    Plugin 'cdmedia/itg_flat_vim'
    Plugin 'raphamorim/lucario'
    Plugin 'tomasr/molokai'
    Plugin 'lu-ren/SerialExperimentsLain'
    Plugin 'exitface/synthwave.vim'
    Plugin 'gkjgh/cobalt'
    Plugin 'nightsense/seabird'
    Plugin 'danilo-augusto/vim-afterglow'

    " Manipulacao de delimitadores
    Plugin 'tpope/vim-surround'

    " File nevigation
    Plugin 'tpope/vim-vinegar'

    " Snipets
    Plugin 'mattn/emmet-vim'

    " Highlight and handle whitespaces
    " Plugin 'ntpeters/vim-better-whitespace'

    " Identacao
    " Plugin 'Yggdroot/indentLine'
    " Plugin 'nathanaelkane/vim-indent-guides'

    " Support for elm-lang
    Plugin 'lambdatoast/elm.vim'

    " Suport for EditorConfig
    Plugin 'editorconfig/editorconfig-vim'

    " Vim markdown support
    Plugin 'godlygeek/tabular'
    Plugin 'plasticboy/vim-markdown'

    " Support for completion
    if has('nvim')
        Plugin 'Shougo/deoplete.nvim'
        Plugin 'zchee/deoplete-jedi'
    else
        Plugin 'Shougo/neocomplete.vim'
    endif

    " Support for go
    Plugin 'fatih/vim-go'

    " Better support for javascript
    Plugin 'pangloss/vim-javascript'

    " YouCompleteMe auto completion support
    " Plugin 'Valloric/YouCompleteMe'

    " Tags management - (Buggy. Huge perfomrance penalty!)
    " Plugin 'xolox/vim-easytags'
    " Plugin 'xolox/vim-misc'

    " FZF fuzzy finder
    Plugin 'junegunn/fzf', { 'dir': '~/.fzf', 'do': './install --all' }

    " Multiple cursors
    Plugin 'terryma/vim-multiple-cursors'

    " VueJS syntax highlighting
    Plugin 'posva/vim-vue'

    " Auto open/close brackets
    Plugin 'jiangmiao/auto-pairs'

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

" Airline configs
let g:airline#extensions#syntastic#enabled = 1
let g:airline#extensions#branch#enabled = 1
let g:airline#extensions#tabline#enabled = 1
let g:airline#extensions#tagbar#enabled = 1
let g:airline_skip_empty_sections = 1



syn on
set tabstop=4
set shiftwidth=4
set expandtab
set smartindent
set autoindent

" Colorschemes
colorscheme molokai
" colorscheme itg_flat
" colorscheme lucario
" colorscheme afterglow
" colorscheme SerialExperimentsLain

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
" set listchars=tab:>-,trail:~,extends:>,precedes:<

" Plugin configuration section
"
    " Airline
    " Make airline appear at all times, not only on splits
    set laststatus=2

    " NERDTree
    " Open /Close NERDTree
    map <F3> :NERDTreeToggle<CR>
    let NERDTreeHijackNetrw = 0

" Disbale folding
set nofoldenable

" Configuring CtrlP
let g:ctrlp_working_path_mode = 'cr'

" Setting copying to clipboard
vmap <C-c> "+y

" Setting to paste from clipboard
imap <C-v> <C-r><C-p>+

" Mappings to move lines up and down
" move in normal mode
nnoremap <A-j> :m .+1<CR>==
nnoremap <A-k> :m .-2<CR>==
" nove selection in visual mode
vnoremap <A-j> :m '>+1<CR>gv=gv
vnoremap <A-k> :m '<-2<CR>gv=gv

" Changing buffers (to simulate changing tabs in airline
if has('mac')
    nnoremap <Leader><Left> :bnext<CR>
    nnoremap <Leader><Right>   :bprevious<CR>
else
    nnoremap <C-PageDown> :bnext<CR>
    nnoremap <C-PageUp>   :bprevious<CR>
endif

if has("nvim")
    " Use deoplete.
    let g:deoplete#enable_at_startup = 1
endif

" Highlight current line
set cursorline

" Improve performance
autocmd BufWinLeave * call clearmatches()
set lazyredraw

" look for tags file in current file's dir,
" then go up until it finds one, up to $HOME
set tags=./tags;,tags;$HOME
