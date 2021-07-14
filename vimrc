" ---------------------------------------------------------------------------------------------------------------------
" CORE SETTINGS
" Settings that dictate the basic behavior I like
" ---------------------------------------------------------------------------------------------------------------------
filetype indent plugin on
filetype plugin on
set colorcolumn=80
set cursorline
set expandtab
set hidden
set incsearch
set lazyredraw
set nobackup
set nocompatible
set noswapfile
set number
set relativenumber
set ruler
set showcmd
set showmatch
set smartindent
set ttimeout
set ttimeoutlen=1
set ttyfast
set undodir=~/.vim/undodir
set undofile
set wildmenu
syntax on

" Leader key spacebar
let mapleader="\<Space>"

" ---------------------------------------------------------------------------------------------------------------------
" FREQUENTLY USED KEYBINDINGS
" ---------------------------------------------------------------------------------------------------------------------
" toggle undotree
nnoremap <leader>u :UndotreeToggle<CR>

" Save the file
noremap <Leader>s :update<CR>

" ---------------------------------------------------------------------------------------------------------------------
" VIMRC RELATED KEYBINDINGS
" Tricks related to modifiying or reloading .vimrc
" ---------------------------------------------------------------------------------------------------------------------
" Source vimrc file
nnoremap <leader>sv :source $MYVIMRC<CR>

" ---------------------------------------------------------------------------------------------------------------------
" EDITING RELATED KEYBINDINGS
" Bindings related to editing the document
" ---------------------------------------------------------------------------------------------------------------------
" highlight last inserted text
nnoremap gV `[v`]

" Make Y yank everything from the cursor to the end of the line.
noremap Y y$

" Allows you to easily replace the current word and all its occurrences.
nnoremap <Leader>rc :%s/\<<C-r><C-w>\>/
vnoremap <Leader>rc y:%s/<C-r>"/

" strip all trailing whitespace in the current file
nnoremap <leader>W :%s/\s\+$//<cr>:let @/=''<CR>

" Sudo save
cnoremap w!! w !sudo tee > /dev/null %

" ---------------------------------------------------------------------------------------------------------------------
" YAML EDITING SETTINGS
" ---------------------------------------------------------------------------------------------------------------------
autocmd FileType yaml setlocal ts=2 sts=2 sw=2 expandtab
autocmd FileType yml setlocal ts=2 sts=2 sw=2 expandtab

" Templates
:autocmd BufNewFile *.yaml 0r ~/.vim/templates/kubernetes.yaml
:autocmd BufNewFile *.yml 0r ~/.vim/templates/kubernetes.yaml

" ---------------------------------------------------------------------------------------------------------------------
" PLUGINS
" Plugins and settings
" ---------------------------------------------------------------------------------------------------------------------
call plug#begin('~/.vim/plugged')
Plug 'andrewstuart/vim-kubernetes'
Plug 'SirVer/ultisnips'
Plug 'honza/vim-snippets'
Plug 'tpope/vim-unimpaired'
Plug 'mbbill/undotree'
Plug 'neoclide/coc.nvim', {'branch': 'master', 'do': 'yarn install --frozen-lockfile'}
Plug 'jremmen/vim-ripgrep'
Plug 'tpope/vim-fugitive'
Plug 'vim-utils/vim-man'
Plug 'lyuts/vim-rtags'
Plug 'git@github.com:kien/ctrlp.vim.git'
Plug 'git@github.com:Valloric/YouCompleteMe.git'

let g:UltiSnipsExpandTrigger="<tab>"
" Use tab to switch to the next trigger point, shit+tab the previous trigger point
let g:UltiSnipsJumpForwardTrigger="<tab>"
let g:UltiSnipsJumpBackwardTrigger="<S-tab>"
" Split the screen vertically when using the UltiSnipsEdit command
let g:UltiSnipsEditSplit="vertical"
" Initialize plugin system
call plug#end()

" CTRL+SPACE Context menu for COC
inoremap <silent><expr> <c-space> coc#refresh()

" ---------------------------------------------------------------------------------------------------------------------
" COLOR AND TERMINAL SETTINGS
" ---------------------------------------------------------------------------------------------------------------------
colorscheme smithlabs
if &term =~# '^screen'
  " Fix for wrong colors inside tmux
    let &t_8f = "\<Esc>[38;2;%lu;%lu;%lum"
    let &t_8b = "\<Esc>[48;2;%lu;%lu;%lum"
endif
set termguicolors
set t_Co=256
source $HOME/.vim/statusline.vim
source $HOME/.vim/tabline.vim

" ---------------------------------------------------------------------------------------------------------------------
" END OF SETTINGS
" ---------------------------------------------------------------------------------------------------------------------
