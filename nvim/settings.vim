" set 24-bit (true color) color support 
"set t_8f=\[[38;2;%lu;%lu;%lum
"set t_8b=\[[48;2;%lu;%lu;%lum
set termguicolors

" max column number where syntax-highlighting is active
set synmaxcol=200

" detect filetype for plugin
filetype plugin on

" when searching go to the word
"set grepprg=grep\ -nH\ $*
set incsearch

" show relativ numbers
set relativenumber

" scroll 7 lines before border
set scrolloff=7

" how many lines should be kept beyond the visible screen
set scrollback=1000

" for latex
let g:tex_flavor = 'latex'

" tabspace
set tabstop=4
set softtabstop=2
set expandtab   " use spaces instead of tab character
set shiftwidth=4

" enable lisp mode
set lisp

" encoding
set encoding=utf-8

" statusline
set statusline=Test
set laststatus=2

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
set timeoutlen=1000

" create backups before saving
set backup
set backupext=.bak
set backupdir=/home/tornax/.config/nvim/backups/

" which python version to use
set pyxversion=3

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
"set autoindent

" autoindent but better?
"set smartindent
set cindent

" will refresh the file automatically
set autoread

" change path to current buffer
set autochdir

" enable icons for terminal
set icon

" highlight line of cursorline
set cursorline

" menu-completion
set wildmenu
"set wildmode=longest,list,full  " Enable zsh like completion

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

" Highlighting in VISUAL-Mode
highlight Visual cterm=reverse ctermbg=NONE

" add a higlight column to see the deadline of column 80
set colorcolumn=+1

" set guifont
set guifont="Hack Nerd Font:style=bold:pixelsize=12"

" set vertical splitted windows to the right
set splitright
set splitbelow

" autosave when editing a file
set autowrite

" the path where to look or to use `gf` and `find` also for autocompletion!
set path+="/usr/local/X11"

" C - Options
"set cindent shiftwidth=4
let c_space_errors=1
let c_curly_error=1

" ---------
"  folding
" ---------
"set foldmethod=syntax
set foldmethod=expr
set foldexpr=nvim_treesitter#foldexpr()
set foldnestmax=2
let c_no_comment_fold=1
let c_syntax_for_h=0

highlight Folded guibg=grey guifg=turquoise
highlight FoldColumn guibg=darkgrey guifg=white

" text of the fold
set foldtext=MyFoldText()
function MyFoldText()
    let l:line = getline(v:foldstart)
	let l:sub = substitute(line, '/\*\|\*/\|{{{\d\=', '', 'g')
	
	return v:folddashes . l:sub
endfunction

let g:rainbow_active = 1

" neovim autocompletion build-in
let completeopt="menuone,preview"

" -----------------
"  GUI - Settings
" -----------------
"set guifont=Hack\ Nerd\ Font\:h16
"set linespace=4
"
"let g:neovide_refresh_rate=60
"let g:neovide_transparency=0.85
"let g:neovide_no_idle=v:false
"let g:neovide_fullscreen=v:false
"let g:neovide_cursor_animation_length=0.13
"let g:neovide_cursor_trail_length=0.5
"let g:neovide_cursor_antialiasing=v:true
"let g:neovide_cursor_vfx_mode = "ripple"
"let g:neovide_cursor_vfx_opacity=200.0
"let g:neovide_cursor_vfx_particle_lifetime=1.2
"let g:neovide_cursor_vfx_particle_density=7.0
"let g:neovide_cursor_vfx_particle_speed=10.0
"let g:neovide_cursor_vfx_particle_phase=1.5
"let g:neovide_cursor_vfx_particle_curl=1.0

"inoremap <C-b> <Esc>a\
"set winaltkeys=yes
"for s:char in split('¶¡@£$€¥{[]}\±{}þ←đŋ©®ł¸~æœ€↓→ðħŧłß̣̣̣´|·@©ĸ»”µł“«', '\zs')
"    if s:char == '\'
"        let s:expr = 'imap <M-Bslash> <Bslash>'
"    elseif s:char == '|'
"        let s:expr = 'imap <M-Bar> <Bar>'
"    else
"        let s:expr = printf('imap <M-%s> %s', s:char, s:char)
"    endif
"    exec s:expr
"endfor

" for my own extension
"set runtimepath^=/usr/include/gtk-3.0/,
"            \/usr/include/glib-2.0/,
"            \/usr/include/glibmm-2.4,
"            \/usr/include/cairo,
"            \/usr/include/pangomm-1.4,
"            \/usr/include/harfbuzz,
"            \/usr/include/freetype2,
"            \/usr/include/atkmm-1.6,
"            \/usr/include/atk-1.0
"set runtimepath^=/windows/Programming/pull_requests/cosco.vim
