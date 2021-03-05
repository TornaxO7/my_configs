" ----- Plugins -----
call plug#begin('~/.vim/plugged')
Plug 'skywind3000/asyncrun.vim'
"Plug 'neoclide/coc.nvim', {'do': 'yarn install --frozen-lockfile'}
Plug 'yggdroot/indentline'                      " Displaying the indentation-context by using vertical lines
Plug 'cohama/lexima.vim'                        " auto surrounding placer
Plug 'vim-scripts/loremipsum'                   " generate lorem ipsum text
Plug 'iamcco/markdown-preview.nvim', { 'do': 'cd app && yarn install'  } " preview for markdown files
Plug 'scrooloose/nerdtree'                      " file tree
Plug 'tyru/open-browser.vim'                    " open your browser with vim!
Plug 'luochen1990/rainbow' 	    				" Colorful brackets
Plug 'tmhedberg/simpylfold'                     " Python folding
Plug 'andrewradev/splitjoin.vim'                " split and join stuff faster :D
Plug 'mkitt/tabline.vim'                        " set style of tabs
Plug 'majutsushi/tagbar' 	 					" To see a summaration of the functions
Plug 'markonm/traces.vim'                       " live substituting preview
Plug 'sirver/ultisnips' 						" good snippet plugin
Plug 'vifm/vifm.vim' 							" use vifm in vim
"Plug 'itchyny/lightline.vim'
Plug 'vim-airline/vim-airline' 					" The statusline
Plug 'vim-airline/vim-airline-themes' 			" Themes for statusline
Plug 'ryanoasis/vim-devicons' 					" icons :D
Plug 'junegunn/vim-easy-align'                  " Align stuff like table etc.
Plug 'easymotion/vim-easymotion'                " vim motion on speed!
Plug 'voldikss/vim-floaterm'                    " terminal in floating window
Plug 'jamessan/vim-gnupg'                       " for (un)encrypting gpg files
Plug 'rrethy/vim-hexokinase', { 'do': 'make hexokinase' } " for displaying colors
Plug 'rakr/vim-one'
"Plug 'sheerun/vim-polyglot' 					" Syntax highlighing
Plug 'thinca/vim-quickrun' 						" compile and execute files :)
Plug 'kshenoy/vim-signature'                    " mark features
Plug 'lifepillar/vim-solarized8'
"Plug 'h1mesuke/vim-unittest'                    " for doing unittest for vim
Plug 'mg979/vim-visual-multi', {'branch': 'master'} " multiple cursor
Plug 'liuchengxu/vim-which-key'                 " display shortcuts
Plug 'Shougo/vimproc.vim', {'do' : 'make'}
"Plug 'puremourning/vimspector'                  " debugger
Plug 'lervag/vimtex' 							" latex

" -- neovim nightly plugins --
Plug 'nvim-treesitter/nvim-treesitter', {'do': ':TSUpdate'}  " We recommend updating the parsers on update
Plug 'nvim-lua/popup.nvim'
Plug 'nvim-lua/plenary.nvim'
Plug 'nvim-telescope/telescope.nvim'
Plug 'neovim/nvim-lspconfig'
Plug 'kosayoda/nvim-lightbulb'
call plug#end()

" ------------------
" Main settings 
" ------------------

" leader for plugins
let g:mapleader = " "
let g:maplocalleader = " "

" mappings
source ~/.config/nvim/mappings.vim

" settings
source ~/.config/nvim/settings.vim

" colorscheme
source ~/.config/nvim/colorscheme.vim

" autocmds
source ~/.config/nvim/autocmds.vim

" testing stuff
source ~/.config/nvim/testing.vim

" --------------------
" Plugin-settings 
" --------------------
" vifm
source ~/.config/nvim/plugins/vifm.vim

" nerdtree
source ~/.config/nvim/plugins/nerdtree.vim

" airline
source ~/.config/nvim/plugins/airline.vim

" tagbar
source ~/.config/nvim/plugins/tagbar.vim

" quickrun
source ~/.config/nvim/plugins/quickrunner.vim

" coc
"source ~/.config/nvim/plugins/coc.vim

" mutiple cursors
source ~/.config/nvim/plugins/vm_multiline.vim

" fzf
"source ~/.config/nvim/plugins/fzf.vim

" ultisnips
source ~/.config/nvim/plugins/ultisnips.vim

" indent marking
source ~/.config/nvim/plugins/indentation.vim

" asyncrun
source ~/.config/nvim/plugins/asyncrun.vim

" lexima
source ~/.config/nvim/plugins/lexima.vim

" -- Only special plugins --
if &filetype =~ 'py'
    " simpyfold
    source ~/.config/nvim/plugins/simpylfold.vim
endif

" cosco
source ~/.config/nvim/plugins/cosco.vim

" vimbrowser
source ~/.config/nvim/plugins/openbrowser.vim

" floatterm
source ~/.config/nvim/plugins/floaterm.vim

" which-key
source ~/.config/nvim/plugins/whichkey.vim

" -- neovim nightly --
source ~/.config/nvim/plugins/treesitter.vim
source ~/.config/nvim/plugins/telescope.vim
source ~/.config/nvim/plugins/nightly_lsp.vim
lua require("lsp")

" ----- own configs ------
" gui settings
""source ~/.config/nvim/gui_settings.vim
