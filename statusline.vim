" Custom vim statusline, no plugins needed :)
" Author: elenapan @ github
" ====================================================================
" Make sure to:
" 1. source this file somewhere at the bottom of your config.
" 2. disable any statusline plugins, as they will override this.
" 3. install a font that includes the semi circle glyphs used to
"    render the bubbles (any NerdFont will do)
" ====================================================================

" Associate modes with color indexes
if !exists('g:mode_colors')
  let g:mode_colors = {
        \'n' : '#7FD8E0',
        \'no' : '#7FD8E0',
        \'v' : '#AE81FF',
        \'V' : '#AE81FF',
        \"\<C-v>" : '#AE81FF',
        \'s' : '#AE81FF',
        \'S' : '#AE81FF',
        \"\<C-s>" : '#AE81FF',
        \'i' : '#F55D5E',
        \'R' : '#F5E25B',
        \'Rv' : '#F5E25B',
        \'c' : '#78D85A',
        \'cv' : '#78D85A',
        \'ce' : '#78D85A',
        \'r' : '#78D85A',
        \'rm' : '#78D85A',
        \'r?' : '#78D85A',
        \'!' : '#F55D5E',
        \'t' : '#F55D5E'
        \}
endif

" TODO: Why do unfocused windows sometimes delay to update their mode color?
function! UpdateModeColors(m) " {{{
  exec printf('hi BubbleTextMode guifg=%s guibg=#2e333a', g:mode_colors[a:m])
  return ''
endfunction
" }}}
function! UpdateModifiedColors(modified) " {{{
    if a:modified == 1
        hi BubbleTextDot guibg=#2e333a cterm=none guifg=#F55D5E
        hi BubbleTextFilename guibg=#2e333a cterm=bold guifg=#F5E25B
    else
        hi BubbleTextDot guibg=#2e333a cterm=none guifg=#52575e
        hi BubbleTextFilename guibg=#2e333a cterm=bold guifg=#f8f8f2
    endif
    return ''
  endfunction
" }}}
function! SetFiletype(filetype) " {{{
  if a:filetype == ''
      return '-'
  else
      return a:filetype
  endif
endfunction
" }}}
" These will not be displayed, but the functions UpdateModeColors and
" UpdateModifiedColors will be called in order to update the colors of some
" elements of the statusline.
set statusline=%{UpdateModeColors(mode())}
set statusline+=%{UpdateModifiedColors(&modified)}

" =======================
" Left side items
" =======================
" Mode and modified
set statusline+=%#BubbleEdge#

set statusline+=%#BubbleTextMode#\ \ \ 
"   
set statusline+=%#BubbleTextDot#⦁⦁⦁
set statusline+=%*\ %.20f\ 
set statusline+=%#BubbleEdge#\ 

" ======================= " Right side items " =======================
set statusline+=%=

" " " Percentage and total lines
" set statusline+=%#BubbleEdge#
" set statusline+=%#BubbleTextPerc#\ %P
" set statusline+=%#BubbleTextSep#\ ⦁\ 
" set statusline+=%#BubbleTextTotal#%L\ 
" set statusline+=%#BubbleEdge#\ 

" Line and column
set statusline+=%#BubbleEdge#
set statusline+=%#BubbleTextLine#\ %2l
set statusline+=%#BubbleTextSep#\ ✖\ 
set statusline+=%#BubbleTextCol#%-2c\ 
set statusline+=%#BubbleEdge#\ 


" Filetype
set statusline+=%#BubbleEdge#
set statusline+=%#BubbleTextFiletype#\ %{SetFiletype(&filetype)}\ 
set statusline+=%#BubbleEdge#

" Do not show mode under the statusline since the statusline itself changes
" color depending on mode
set noshowmode
set laststatus=2
