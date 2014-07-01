" ================ Color Settings ====================
" Custom colors for Terminal Vim on Terminal and iTerm2
" Tabline and Tablinefill colors
if !has ('gui_running')
  hi tabline ctermbg = 250 ctermfg = 254 guibg = #bcbcbc guifg = #e4e4e4
  hi tablinefill ctermbg = 255 ctermfg = 254 guibg = #eeeeee guifg = #e4e4e4
  " Statusline color
  hi statusline ctermbg = 245 ctermfg = 254 guibg = #8a8a8a guifg = #e4e4e4
  " Better Whitespace color
  highlight extrawhitespace ctermbg = 254 guibg = #e4e4e4
else
  " Tabline and Tablinefill colors
  " hi tabline guifg = #695f54 guibg = #302a2a
  " hi tablinefill guifg = #1e1b1b guibg = #9d9081
  " Better Whitespace color
  highlight extrawhitespace guibg = #1e1b1b
endif
