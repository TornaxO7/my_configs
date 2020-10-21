" set 24-bit (true color) color support 
"set t_8f=\[[38;2;%lu;%lu;%lum
"set t_8b=\[[48;2;%lu;%lu;%lum
set termguicolors

" enable syntax
"syntax on

" detect filetype for plugin
filetype plugin on

" when searching go to the word
"set grepprg=grep\ -nH\ $*
set incsearch

" show relativ numbers
set number

" scroll 7 lines before border
set scrolloff=7

" for latex
let g:tex_flavor = 'latex'

" tabspace
set tabstop=4
set softtabstop=2 expandtab
set shiftwidth=4

" encoding
set encoding=utf-8

" conceal level (which words should be hidden?)
set conceallevel=0
set concealcursor="nvic"

" use global clipbard
set clipboard=unnamedplus

" hide unfocused buffers
"set hidden

" cmdheight at the bottom
set cmdheight=2

" show the other bracket pair
"set showmatch

" updatetime
set updatetime=100

" timeout for which-key
set timeoutlen=100

" create backups before saving
"set backup
"set backupext=.bak
"set patchmode=.orig

" for coc: Don't pass messages to |ins-completion-menu|
"set shortmess+=c

" show symbols next to the linenumbers
" if - clause from "coc":
" Always show the signcolumn, otherwise it would shift the text each time
" diagnostics appear/become resolved.
if has("patch-8.1.1564")
  " Recently vim can merge signcolumn and number column into one
  set signcolumn=number
else
  set signcolumn=yes
endif

" autoindent on
" set autoindent

" autoindent but better?
" set smartindent

" will refresh the file automatically
set autoread

" overwrites indent above
set cindent

" highlight line of cursorline
set cursorline

" menu-completion
set wildmenu
set wildmode=longest,list,full  " Enable zsh like completion

" linebreak if word and line is too long
set wrap
set textwidth=80
set linebreak
"set showbreak

" virtual space for tables!
"set virtualedit=all

" mouse
set mouse=a

" search exactly after this word
"set ignorecase
set smartcase
set ruler

" Highlighting in VISUAL-Mode
highlight Visual cterm=reverse ctermbg=NONE

" set guifont
set guifont="Hack Nerd Font:style=bold:pixelsize=12"

" Assembly file syntax
let filetype_i = "nasm"
let asmsyntax = "nasm"

" autosave when editing a file
"set autoswrite

" the path where to look or to use `gf` and `find` also for autocompletion!
set path+="/usr/local/X11"

" C - Options
set cindent shiftwidth=4

" ---------
"  folding
" ---------
set foldmethod=syntax
set foldnestmax=1
let c_no_comment_fold = 1
let c_syntax_for_h = 1
highlight Folded guibg=grey guifg=turquoise
highlight FoldColumn guibg=darkgrey guifg=white

" text of the fold
set foldtext=MyFoldText()
function MyFoldText()
        let line = getline(v:foldstart)
		let sub = substitute(line, '/\*\|\*/\|{{{\d\=', '', 'g')
		
		return v:folddashes . sub
endfunction

command! Gcc gcc

let g:rainbow_active = 1

" -----------------
"  GUI - Settings
" -----------------
set guifont=Hack\ Nerd\ Font\:h16
set linespace=4

let g:neovide_refresh_rate=60
let g:neovide_transparency=0.85
let g:neovide_no_idle=v:false
let g:neovide_fullscreen=v:false
let g:neovide_cursor_animation_length=0.13
let g:neovide_cursor_trail_length=0.5
let g:neovide_cursor_antialiasing=v:true
let g:neovide_cursor_vfx_mode = "ripple"
let g:neovide_cursor_vfx_opacity=200.0
let g:neovide_cursor_vfx_particle_lifetime=1.2
let g:neovide_cursor_vfx_particle_density=7.0
let g:neovide_cursor_vfx_particle_speed=10.0
let g:neovide_cursor_vfx_particle_phase=1.5
let g:neovide_cursor_vfx_particle_curl=1.0

inoremap <C-b> <Esc>a\
set winaltkeys=yes
for s:char in split('¶¡@£$€¥{[]}\±{}þ←đŋ©®ł¸~æœ€↓→ðħŧłß̣̣̣´|·@©ĸ»”µł“«', '\zs')
    if s:char == '\'
        let s:expr = 'imap <M-Bslash> <Bslash>'
    elseif s:char == '|'
        let s:expr = 'imap <M-Bar> <Bar>'
    else
        let s:expr = printf('imap <M-%s> %s', s:char, s:char)
    endif
    exec s:expr
endfor
