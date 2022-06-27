" Basic settings
set hidden                 " For tabs
set number relativenumber  " Line numbers
set mouse=a                " Get mouse working
set encoding=utf-8         " Set encoding to utf-8
set cursorline             " Highlights current line
set ignorecase             " Ignore case when matching
set smartcase              " Smart case
set splitbelow splitright  " Splits below and right instead of above and right
set tabstop=2              " 2 spaces for a tab
set softtabstop=2          " See multiple spaces as tabstops
set shiftwidth=2           " Shift indentation with 2 spaces
set smarttab
set expandtab              " Converts tabs to spaces
set autoindent             " Indent new line line the previous
set clipboard+=unnamedplus " Use system clipboard
set colorcolumn=80

let mapleader=","

imap jj <ESC>
map <silent> <esc> :noh <CR>

" Tab completions
set wildmode=longest,list,full

" Reopen file at last cursor position
if has("autocmd")
  au BufReadPost * if line("'\"") > 1 && line("'\"") <= line("$") | exe "normal! g'\"" | endif
endif

"Plugins
call plug#begin('~/.vim/plugged')
"Plug 'morhetz/gruvbox'
Plug 'gruvbox-community/gruvbox'
Plug 'preservim/nerdtree'
Plug 'takac/vim-hardtime'
Plug 'mhinz/vim-startify'
Plug 'neoclide/coc.nvim', {'branch': 'release'}
Plug 'tpope/vim-surround'
Plug 'easymotion/vim-easymotion'
Plug 'liuchengxu/vim-which-key'
Plug 'vim-airline/vim-airline'
Plug 'leafgarland/typescript-vim'
Plug 'peitalin/vim-jsx-typescript'
Plug 'maxmellon/vim-jsx-pretty'
Plug 'szw/vim-maximizer'
Plug 'mbbill/undotree'
Plug 'ap/vim-css-color'
Plug 'tiagofumo/vim-nerdtree-syntax-highlight'
Plug 'ryanoasis/vim-devicons' " Always load as the very last one
call plug#end()

" Color scheme
"set termguicolors          " True colors
syntax on                  " Syntax highlighting
let g:gruvbox_contrast_light = 'medium'
colorscheme gruvbox        " Take colorscheme from terminal
"set background=dark " use dark mode
autocmd BufRead *.py setlocal colorcolumn=80
"highlight ColorColumn ctermbg=0 guibg=lightgrey

" set filetypes as typescriptreact
autocmd BufNewFile,BufRead *.tsx,*.jsx set filetype=typescriptreact

" NERDtree settings
nmap <C-f> :NERDTreeToggle<CR>

" Which-key
nnoremap <silent> <leader> :WhichKey '<,>'<CR>

" Navigate between buffers
map <C-h> <C-w>h
map <C-j> <C-w>j
map <C-k> <C-w>k
map <C-l> <C-W>l

" Navigate between tabs
nnoremap <silent> <C-Left> :tabprevious<CR>
nnoremap <silent> <C-Right> :tabnext<CR>
" Move tabs to left and right
nnoremap <silent> <A-Left> :tabm -1<CR>
nnoremap <silent> <A-Right> :tabm +1<CR>
" Close current tab
nnoremap <silent> <leader>ct :tabclose<CR>

" CoC
source $HOME/.config/nvim/coc.vim

" Autoformat
" noremap <F3> :Autoformat<CR>
" au BufWrite * :Autoformat
"
" Undotree
nnoremap <F5> :UndotreeToggle<CR>
