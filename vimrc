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
set autowrite
syntax on


" Leader key spacebar
let mapleader="\<Space>"

" ---------------------------------------------------------------------------------------------------------------------
" FREQUENTLY USED KEYBINDINGS
" ---------------------------------------------------------------------------------------------------------------------
" toggle undotree
nnoremap <leader>u :UndotreeToggle<CR>

" Save the file
noremap <Leader>s :write<CR>

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
" VIM-GO
" Bindings related to Golang
" ---------------------------------------------------------------------------------------------------------------------
map <C-n> :cnext<CR>
map <C-m> :cprevious<CR>
nnoremap <leader>a :cclose<CR>
autocmd FileType go nmap <leader>r  <Plug>(go-run)
autocmd FileType go nmap <leader>t  <Plug>(go-test)
autocmd FileType go nmap <Leader>c <Plug>(go-coverage-toggle)
autocmd BufNewFile,BufRead *.go setlocal noexpandtab tabstop=4 shiftwidth=4
autocmd Filetype go command! -bang A call go#alternate#Switch(<bang>0, 'edit')
autocmd Filetype go command! -bang AV call go#alternate#Switch(<bang>0, 'vsplit')
autocmd Filetype go command! -bang AS call go#alternate#Switch(<bang>0, 'split')
autocmd Filetype go command! -bang AT call go#alternate#Switch(<bang>0, 'tabe')
autocmd FileType go nmap <Leader>i <Plug>(go-info)
let g:go_metalinter_deadline = "5s"
let g:go_fmt_command = "goimports"
let g:go_auto_type_info = 1
let g:go_auto_sameids = 1
set updatetime=100

" run :GoBuild or :GoTestCompile based on the go file
function! s:build_go_files()
  let l:file = expand('%')
  if l:file =~# '^\f\+_test\.go$'
    call go#test#Test(0, 1)
  elseif l:file =~# '^\f\+\.go$'
    call go#cmd#Build(0)
  endif
endfunction

autocmd FileType go nmap <leader>b :<C-u>call <SID>build_go_files()<CR>


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
Plug 'jremmen/vim-ripgrep'
Plug 'tpope/vim-fugitive'
Plug 'vim-utils/vim-man'
Plug 'lyuts/vim-rtags'
Plug 'git@github.com:kien/ctrlp.vim.git'
Plug 'fatih/vim-go', { 'do': ':GoUpdateBinaries' }
Plug 'AndrewRadev/splitjoin.vim'

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
