" Hop

" Blue
hi HopNextKey  cterm=bold ctermfg=216 gui=bold guifg=#EBCB8B

" Yellow
hi HopNextKey1 cterm=bold ctermfg=25 gui=bold guifg=#81A1C1

" Pum Menu back color
hi Pmenu ctermbg=NONE guibg=NONE guifg=#ECEFF4
hi PmenuSel ctermfg=NONE ctermbg=8 guifg=NONE guibg=#4c566a

" Fuzzy Match blue
highlight! CmpItemAbbrMatch ctermfg=25 guibg=NONE guifg=#5E81AC
highlight! link CmpItemAbbrMatchFuzzy CmpItemAbbrMatch

" Functions and Methods pink
highlight! CmpItemKindFunction ctermfg=177 guibg=NONE guifg=#B48EAD
highlight! link CmpItemKindMethod CmpItemKindFunction

" front
" highlight! CmpItemKindKeyword ctermfg=255 guibg=NONE guifg=#D4D4D4
" highlight! link CmpItemKindProperty CmpItemKindKeyword
" highlight! link CmpItemKindUnit CmpItemKindKeyword

" Snippet
" highlight! CmpItemKindSnippet ctermfg=229 guibg=NONE guifg=#EBCB8B

" Highlight yank remove underline (it removes the underline from the second
" result on increemtal highlight"
hi IncSearch cterm=none ctermfg=15 ctermbg=12 gui=none guifg=#eceff4 guibg=#5e81ac
