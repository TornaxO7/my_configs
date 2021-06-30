" =========================
" Colorscheme settings 
" =========================

let g:solarized_italics=0

colorscheme solarized8

if hostname() =~ 'PORTABLE' || $TERM == 'linux'
    set background=dark

    highlight Visual cterm=reverse ctermbg=None

elseif hostname() =~ 'ARCH'

    set background=light
    hi LspReferenceText guifg=Purple
    " hi LspReferenceRead guifg=Purple
    " hi LspReferenceWrite guifg=Purple

    "highlight LspDiagnosticsVirtualTextError guifg=Red guibg=#eee8d5
    " highlight LspDiagnosticsVirtualTextError guifg=Red guibg=reverse
    "highlight FoldColumn guibg=darkgrey guifg=white
    highlight Visual cterm=reverse ctermbg=NONE
endif
