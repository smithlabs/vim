" Plugins
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

" Color and terminal settings
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
