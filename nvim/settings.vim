set autoindent
set autoread
set autowrite
set backup
set backupcopy=no
set backupdir=/home/tornax/.config/nvim/backups/
set backupext=.bak
set cindent
set clipboard=unnamedplus
set cmdheight=2
set colorcolumn=+1
set completeopt=menuone,preview,noinsert,noselect
set concealcursor="nvic"
set conceallevel=0
set cursorline
set encoding=utf-8
set expandtab
"set foldexpr=nvim_treesitter#foldexpr()
"set foldmethod=expr
set foldnestmax=2
set foldtext=MyFoldText()
set guifont="Hack Nerd Font:style=bold:pixelsize=12"
set icon
set incsearch
set lazyredraw
set linebreak
set lisp
set mouse=a
set pyxversion=3
set relativenumber
set scrollback=1000
set scrolloff=7
set shiftwidth=4
set shortmess+=c
set showtabline=2
set signcolumn=yes
set smartcase
set softtabstop=2
set splitbelow
set splitright
set synmaxcol=200
set tabstop=4
set termguicolors
set textwidth=80
set timeoutlen=1000
set updatetime=100
set wrap

filetype plugin on
let c_space_errors=1
let c_curly_error=1
let c_no_comment_fold=1
let c_syntax_for_h=0
"let asmsyntax="nasm"
function MyFoldText()
    let l:line = getline(v:foldstart)
	let l:sub = substitute(line, '/\*\|\*/\|{{{\d\=', '', 'g')
	
	return v:folddashes . l:sub
endfunction

packadd termdebug
