" ▄▄▄ ▄▄    ▄ ▄▄▄ ▄▄▄▄▄▄▄      ▄▄   ▄▄ ▄▄▄ ▄▄   ▄▄ 
"█   █  █  █ █   █       █    █  █ █  █   █  █▄█  █
"█   █   █▄█ █   █▄     ▄█    █  █▄█  █   █       █
"█   █       █   █ █   █      █       █   █       █
"█   █  ▄    █   █ █   █  ▄▄▄ █       █   █       █
"█   █ █ █   █   █ █   █ █   █ █     ██   █ ██▄██ █
"█▄▄▄█▄█  █▄▄█▄▄▄█ █▄▄▄█ █▄▄▄█  █▄▄▄█ █▄▄▄█▄█   █▄█
"
""""""""""""""""""""""
"""""""""""""""""""""
""""""""SETS"""""""""
"""""""""""""""""""""
"""""""""""""""""""""
set number
set cursorline
set noerrorbells
set incsearch
set hlsearch
set nohlsearch
set updatetime=50
set tabstop=4 softtabstop=4
set shiftwidth=4
set expandtab
set smartindent
set showmatch
set relativenumber
set scrolloff=8
set nocompatible
set noswapfile
set backspace=indent,eol,start
filetype plugin indent on
syntax on

""""""""""""""""""""""
""""""""""""""""""""""
""""""PLUG INS""""""""
""""""""""""""""""""""
""""""""""""""""""""""
call plug#begin()
""COC Auto complete""
Plug 'neoclide/coc.nvim', {'branch': 'release'}
""Jupyter Notebook Shortcuts for DS
Plug 'jupyter-vim/jupyter-vim'
""Telescope File navigation and other goodies
Plug 'nvim-telescope/telescope.nvim'
""Easy Comment and Uncomment""
Plug 'preservim/nerdcommenter'
""NERDTree File navigation and git usage""
Plug 'preservim/nerdtree'
Plug 'nvim-lua/plenary.nvim'
Plug 'Xuyuanp/nerdtree-git-plugin'
""Devicons for cute lil file icons UwU""
Plug 'ryanoasis/vim-devicons'
""HTML and CSS autocomplete""
Plug 'mattn/emmet-vim'
""Still need to work on treesitter workflow
Plug 'nvim-treesitter/nvim-treesitter', {'do': ':TSUpdate'}  
Plug 'nvim-treesitter/playground'
"Rainbow () and {} to check for pairs
Plug 'https://github.com/frazrepo/vim-rainbow'
""A collection of language packs for Vim.
Plug 'sheerun/vim-polyglot' 
"Inline colors when using CSS 
Plug 'ap/vim-css-color'
"ColorSchemes ( Leader COL to select ) 
Plug 'sts10/vim-pink-moon' 
Plug 'pineapplegiant/spaceduck', { 'branch': 'main' }
Plug 'morhetz/gruvbox'
Plug 'dracula/vim',{'as':'dracula'}
"Airline and Themeing
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
" GitGud w/ Fugitive
Plug 'tpope/vim-fugitive'
Plug 'dccsillag/magma.vim'
" Vim Wiki
Plug 'vimwiki/vimwiki'
call plug#end()

""""""""""""""""""""""
"""""""THEMEING"""""""
""""""""""""""""""""""
""""""""""""""""""""""
set termguicolors
"Pink Moon
"colorscheme pink-moon
":let g:airline_theme='tomorrow'
"GruvBox
"colorscheme gruvbox
":let g:airline_theme='gruvbox'
"Space Duck
colorscheme spaceduck
:let g:airline_theme='spaceduck'
"colorscheme dracula
"set background=dark
"Quick colorscheme changing using telescope
:nnoremap <Leader>sh :lua require'telescope.builtin'.colorscheme{}<cr>

""""""""""""""""""""
""""""""""""""""""""""
""""""REMAPPING""""""
""""""""""""""""""""""
""""""""""""""""""""""
"Space As Leader
let mapleader=" "
let g:jupyter_mapkeys = 0
"Alternative to ESC, no one ever types k and then j 
:inoremap kj <Esc>
:cnoremap kj <Esc>
:inoremap KJ <Esc>
:cnoremap KJ <Esc>
"Quick Write & Quit and Force Quit
nmap <leader>wq :wq<CR>
nmap <leader>qq :q!<CR>
"Yank Fix, behaves like other capital actions
nnoremap Y y$
"Visual Line Movement
vnoremap K :m '<-2<CR>gv=gv
vnoremap J :m '>+1<CR>gv=gv
"Jupyter Remaps 
vnoremap <leader>jj :JupyterSendRange<CR>
nmap <leader>jc :JupyterConnect<CR>
nmap <leader>jf :JupyterRunFile<CR>
"Allow Copying to the Clip Board w/ Control Y
vnoremap <C-c> "*y"
"Simplified Window Navigation, Leader U/D/L/R changes screen in that direction
map <leader>h :wincmd h<CR>
map <leader>j :wincmd j<CR>
map <leader>k :wincmd k<CR>
map <leader>l :wincmd l<CR>
"CoC Jump to Def Map
nnoremap <leader>gd :call CocActionAsync('jumpDefinition')<CR>
"""Simple White Space""
map <Enter> o<ESC>
map <leader><Enter> O<ESC>
"Telescope Mapping
nnoremap <leader>ff <cmd>Telescope find_files<cr>
nnoremap <leader>fg <cmd>Telescope live_grep<cr>
nnoremap <leader>fb <cmd>Telescope buffers<cr>
nnoremap <leader>fh <cmd>Telescope help_tags<cr>
"Fugitive Mapping
nmap <leader>gh : diffget //3<CR>
nmap <leader>gu : diffget //2<CR>
nmap <leader>gs :G<CR>
nmap <leader>gl :G log<CR>
nmap <leader>gd :G diff<CR>

"EMMET SETTINGS
autocmd FileType html,htmldjango,css,scss EmmetInstall
let g:user_emmet_mode='n' 
let g:user_emmet_install_global = 0
"NERDTree Mapping
nnoremap <leader>n :NERDTreeFocus<CR>
nnoremap <C-n> :NERDTreeToggle<CR>
nnoremap <C-f> :NERDTreeFind<CR>
let g:NERDTreeHijackNetrw = 1
let g:NERDTreeGitStatusShowClean = 1

let g:vimwiki_list = [{'path': '~/Documents/vimwiki',
            \ 'syntax': 'markdown', 'ext': '.md'}]
