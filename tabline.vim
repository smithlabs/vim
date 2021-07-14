" Custom vim tabline, no plugins needed :)
" Author: elenapan @ github
" ====================================================================
" Make sure to:
" 1. source this file somewhere at the bottom of your config.
" 2. disable any tabline plugins, as they will override this.
" 3. install a font that includes the semi circle glyphs used to
"    render the bubbles (any NerdFont will do)
" ====================================================================

" Setup tabline
if exists("+showtabline")
  function! CustomTabline()
    let s = ''
    let t = tabpagenr()
    let i = 1
    while i <= tabpagenr('$')
      let buflist = tabpagebuflist(i)
      let winnr = tabpagewinnr(i)

      " Set colors for this tab
      if (i == t)
        " If it is selected
        let start_color = '%#CustomTablineStartSel#'
        let label_color = '%#CustomTablineLabelSel#'
        let transition_color = '%#CustomTablineTransitionSel#'
        let body_color = '%#CustomTablineBodySel#'
        let end = '%#CustomTablineEndSel# '
      else
        " If it is not selected
        let start_color = '%#CustomTablineStart#'
        let label_color = '%#CustomTablineLabel#'
        let transition_color = '%#CustomTablineTransition#'
        let body_color = '%#CustomTablineBody#'
        let end = '  '
      endif

      " Draw the bubble
      let s .= start_color.''
      let s .= label_color.i
      let s .= transition_color.''
      let s .= body_color
      let file = bufname(buflist[winnr - 1])
      let file = fnamemodify(file, ':p:t')
      if file == ''
        let file = '[No Name]'
      endif
      let s .= ' '.file
      let s .= end

      let i = i + 1
    endwhile
    return s
  endfunction

  set showtabline=1
  set tabline=%!CustomTabline()
endif

