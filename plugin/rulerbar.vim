" Vim plugin for displaying the window position within a buffer.
" Last Change: 2011 Dec 28
" Maintainer:  Nicolas Wu <nicolas.wu@gmail.com>
" License:     BSD3

if exists ("g:loaded_rulerbar")
  finish
endif
let g:loaded_rulerbar = 1

if !exists("g:rulerbar_buffer")
  let g:rulerbar_buffer = '─'
endif
if !exists("g:rulerbar_window")
  let g:rulerbar_window = "█"
endif
if !exists("g:rulerbar_width")
  let g:rulerbar_width = 10
endif

function! RulerBar ()
  let l:cursor = 0
  let w:rulerbar = ""
  while l:cursor < g:rulerbar_width * (line("w0") - 1) / line("$")
    let l:cursor += 1
    let w:rulerbar .= g:rulerbar_buffer
  endwhile
  while l:cursor <= g:rulerbar_width * line("w$") / line("$")
    let l:cursor += 1
    let w:rulerbar .= g:rulerbar_window
  endwhile
  while l:cursor <= g:rulerbar_width
    let l:cursor += 1
    let w:rulerbar .= g:rulerbar_buffer
  endwhile
endfunction

autocmd BufWinEnter * :call RulerBar()
autocmd CursorHold  * :call RulerBar()
autocmd CursorMoved * :call RulerBar()
autocmd WinEnter    * :call RulerBar()

call RulerBar()
set rulerformat=%24(%l,%c%V%=\ %<%{w:rulerbar}\ %P%)

