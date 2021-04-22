" =========================
" Colorscheme settings 
" =========================

if hostname() =~ 'PORTABLE' || $TERM == 'linux'
    set background=dark
    highlight Visual cterm=reverse ctermbg=reverse

elseif hostname() =~ 'ARCH'

    set background=light
    highlight LspDiagnosticsVirtualTextError guifg=Red guibg=#eee8d5
    "highlight FoldColumn guibg=darkgrey guifg=white
    highlight Visual cterm=reverse ctermbg=NONE
endif

"let g:neosolarized_contrast = "high"
"let g:neosolarized_visibility = "high"
"let g:neosolarized_vertSplitBgTrans=0 
"colorscheme NeoSolarized
"
let g:solarized_italics=0
colorscheme solarized8

"let g:airline_theme = 'onelight'
"let g:airline_theme = 'deus'
"" transparent background

" ----------------------------
" Overwriting some colors 
" ----------------------------
"hi ColorColumn ctermbg=cyan guibg=LightBlue
"highlight Folded guibg=NONE guifg=turquoise
"
"highlight LspDiagnosticsFloatingError guifg=BrightRed ctermbg=DarkRed

"hi! Normal ctermbg=NONE guibg=NONE
"hi! NonText ctermbg=NONE guibg=NONE
