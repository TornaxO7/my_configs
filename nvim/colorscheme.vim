if $TERM == 'linux'
    set background=dark
else

    set background=dark
    " hi LspReferenceText guifg=Purple
    " hi LspReferenceRead guifg=Purple
    " hi LspReferenceWrite guifg=Purple

    highlight LspDiagnosticsVirtualTextError guifg=Red guibg=#eee8d5
    " highlight LspDiagnosticsVirtualTextError guifg=Red guibg=reverse
    " highlight FoldColumn guibg=darkgrey guifg=white
    highlight Visual cterm=reverse ctermbg=NONE

    highlight Normal guibg=white
    " highlight NonText guibg=none

    " hi Normal guibg=NONE ctermbg=NONE
    " hi CursorLine guibg=fg
endif
