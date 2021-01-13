" ----- Plugins -----
call plug#begin('~/.vim/plugged')
Plug 'altercation/vim-colors-solarized'
Plug 'rakr/vim-one'
Plug 'neoclide/coc.nvim', {'do': 'yarn install --frozen-lockfile'}
"Plug 'prabirshrestha/vim-lsp'
"Plug 'vhakulinen/gnvim-lsp'
"Plug 'jackguo380/vim-lsp-cxx-highlight'

"Plug 'mattn/vim-lsp-settings'
"Plug 'mads-hartmann/bash-language-server'       " bash language server
Plug 'vim-airline/vim-airline' 					" The statusline
Plug 'vim-airline/vim-airline-themes' 			" Themes for statusline
"Plug 'vim-scripts/SearchComplete' 				" Seach with using tab :D
"Plug 'scrooloose/syntastic'  					" Syntax controller
Plug 'luochen1990/rainbow' 	    				" Colorful brackets
Plug 'sheerun/vim-polyglot' 					" Syntax highlighing
Plug 'lervag/vimtex' 							" latex
Plug 'majutsushi/tagbar' 	 					" To see a summaration of the functions
"Plug 'matze/vim-tex-fold' 						" Latex folding
Plug 'ryanoasis/vim-devicons' 					" icons :D
Plug 'liuchengxu/vim-which-key'                 " display shortcuts
"Plug 'nvim-treesitter/nvim-treesitter'
"Plug 'vim-scripts/taglist.vim'
"Plug 'skywind3000/vim-quickui'                 " create own widgets
"Plug 'ludovicchabant/vim-gutentags'            " probably needed for quickui
"Plug 'stevearc/vim-arduino'                    " some arduino stuff
"Plug 'sudar/vim-arduino-syntax'                " well... look at its name...
Plug 'thinca/vim-quickrun' 						" compile and execute files :)
Plug 'Shougo/vimproc.vim', {'do' : 'make'}
Plug 'skywind3000/asyncrun.vim'
Plug 'junegunn/fzf', { 'dir': '~/.fzf', 'do': './install --all' }
Plug 'antoinemadec/coc-fzf'
Plug 'kshenoy/vim-signature'                    " mark features
"Plug 'wesq3/vim-windowswap' 					" switch windows
"Plug 't9md/vim-choosewin' 						" choose window of many windows
"Plug 'rhysd/vim-grammarous' 					" vim grammar checking
"Plug 'coddingtonbear/neomake-platformio' 		" for platformio
Plug 'mg979/vim-visual-multi', {'branch': 'master'} " multiple cursor
Plug 'sirver/ultisnips' 						" good snippet plugin
"Plug 'honza/vim-snippets' 						" some preconfigured snippets
Plug 'cohama/lexima.vim'                        " auto surrounding placer
"Plug 'kien/tabman.vim' 							" tab manager
"Plug 'vhakulinen/gnvim-lsp'
"Plug 'ojroques/vim-scrollstatus'                " scroll bar
Plug 'vifm/vifm.vim' 							" use vifm in vim
Plug 'iamcco/markdown-preview.nvim', { 'do': 'cd app && yarn install'  } " preview for markdown files
Plug 'puremourning/vimspector'                  " debugger
"Plug 'tmhedberg/simpylfold'                     " Python folding
Plug 'yggdroot/indentline'                      " Displaying the indentation-context by using vertical lines
"Plug 'justinmk/vim-syntax-extra'                " Highlights functions as well
"Plug 'rust-lang/rust.vim'                       " rust language!
Plug 'junegunn/vim-easy-align'                  " Align stuff like table etc.
Plug 'mkitt/tabline.vim'                      " set style of tabs
"Plug 'tpope/vim-fugitive'                       " git interaction in vim
"Plug 'alx741/vinfo'                             " for using vim in info pages
Plug 'jamessan/vim-gnupg'                       " for (un)encrypting gpg files
call plug#end()

" ----- Configs/Variables -----

"---- Plugins ---
" eighties (window resizing)
"source ~/.vim/plugins/eighties.vim

" ranger
"source ~/.vim/plugins/ranger.vim

" vifm
source ~/.config/nvim/plugins/vifm.vim

" windowswap
"source ~/.config/nvim/plugins/windowswap.vim

" nerdtree
"source ~/.vim/plugins/nerdtree.vim
"source ~/.vim/plugins/nerdtree_git.vim

" airline
source ~/.config/nvim/plugins/airline.vim

" tagbar
source ~/.config/nvim/plugins/tagbar.vim

" syntastic 
source ~/.config/nvim/plugins/syntastic.vim

" quickrun
source ~/.config/nvim/plugins/quickrunner.vim

" coc
source ~/.config/nvim/plugins/coc.vim

" leader-guide
"source ~/.vim/plugins/leader_guide.vim

" which-key
source ~/.config/nvim/plugins/whichkey.vim

" mutiple cursors
source ~/.config/nvim/plugins/vm_multiline.vim

" fzf
source ~/.config/nvim/plugins/fzf.vim

" ultisnips
source ~/.config/nvim/plugins/ultisnips.vim

" youcompleteme
"source ~/.vim/plugins/youcompleteme.vim

" vimspector
source ~/.config/nvim/plugins/vimspector.vim

" quickui
"source ~/.vim/plugins/quickui.vim

" indent marking
source ~/.config/nvim/plugins/indentation.vim

" language server
"source ~/.config/nvim/plugins/lsp.vim

" asyncrun
source ~/.config/nvim/plugins/asyncrun.vim

" -- Only special plugins --
if &filetype ==# 'py'
    " simpyfold
    source ~/.config/nvim/plugins/simpylfold.vim
endif

" ----- own configs ------
" mappings
source ~/.config/nvim/mappings.vim

" settings
source ~/.config/nvim/settings.vim

" colorscheme
source ~/.config/nvim/colorscheme.vim
"source ~/.vim/plugins/neosolarized.vim

" autocmds
source ~/.config/nvim/autocmds.vim

" gui settings
"source ~/.config/nvim/gui_settings.vim
