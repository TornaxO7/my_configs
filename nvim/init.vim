" ============
" Plugins 
" ============
call plug#begin('~/.vim/plugged')
Plug 'skywind3000/asyncrun.vim'
Plug 'lukas-reineke/indent-blankline.nvim', { 'branch' : 'lua' }
Plug 'tpope/vim-surround'                       " edit the surroundings fast
Plug 'voldikss/vim-translator'                  " translator
Plug 'itchyny/lightline.vim'                    " statusbar
Plug 'mengelbrecht/lightline-bufferline'
Plug 'vim-scripts/loremipsum'                   " generate lorem ipsum text
Plug 'iamcco/markdown-preview.nvim', { 'do': 'cd app && yarn install'  } " preview for markdown files
Plug 'tmhedberg/simpylfold'                     " Python folding
Plug 'andrewradev/splitjoin.vim'                " split and join stuff faster :D
Plug 'mkitt/tabline.vim'                        " set style of tabs
Plug 'majutsushi/tagbar' 	 					" To see a summaration of the functions
Plug 'markonm/traces.vim'                       " live substituting preview
Plug 'sirver/ultisnips' 						" good snippet plugin
Plug 'vifm/vifm.vim' 							" use vifm in vim
Plug 'easymotion/vim-easymotion'                " vim motion on speed!
Plug 'voldikss/vim-floaterm'                    " terminal in floating window
Plug 'jamessan/vim-gnupg'                       " for (un)encrypting gpg files
Plug 'junegunn/vim-easy-align'                  " easy aligning
Plug 'rrethy/vim-hexokinase', { 'do': 'make hexokinase' } " for displaying colors
Plug 'thinca/vim-quickrun' 						" compile and execute files :)
Plug 'airblade/vim-rooter'                      " get the project root
Plug 'lifepillar/vim-solarized8'                " colorscheme
Plug 'lervag/vimtex' 							" latex
Plug 'tpope/vim-fugitive'                       " git wrapper
Plug 'dpelle/vim-languagetool'                  " look for grammar mistakes
Plug 'gelguy/wilder.nvim'                       " awesome command stuff
Plug 'chiel92/vim-autoformat'
Plug 'junegunn/fzf.vim'

" -- neovim nightly plugins --
Plug 'nvim-treesitter/nvim-treesitter', {'do': ':TSUpdate'}  " We recommend updating the parsers on update
Plug 'romgrk/nvim-treesitter-context'
Plug 'p00f/nvim-ts-rainbow'
Plug 'nvim-lua/popup.nvim'                      " dependencie of telescope
Plug 'nvim-lua/plenary.nvim'                    " dependencie of telescope
Plug 'nvim-telescope/telescope.nvim'
Plug 'neovim/nvim-lspconfig'
Plug 'kosayoda/nvim-lightbulb'
Plug 'hrsh7th/nvim-compe'
Plug 'RishabhRD/popfix'
Plug 'onsails/lspkind-nvim'
Plug 'kyazdani42/nvim-web-devicons'             " nice devicons
Plug 'hrsh7th/vim-vsnip'                        " snippet autocompletion and move
Plug 'kyazdani42/nvim-tree.lua'                 " file tree shower
Plug 'mfussenegger/nvim-dap'
Plug 'theHamsta/nvim-dap-virtual-text'
Plug 'rcarriga/nvim-dap-ui'
Plug 'liuchengxu/vista.vim'
Plug 'nvim-telescope/telescope-symbols.nvim'
Plug 'kevinhang91/nvim-bqf'
Plug 'ojroques/nvim-lspfuzzy'
call plug#end()

" ------------------
" Main settings 
" ------------------

" leader for plugins
let g:mapleader = " "
let g:maplocalleader = " "

source ~/.config/nvim/autocmds.vim
source ~/.config/nvim/commands.vim
source ~/.config/nvim/mappings.vim
source ~/.config/nvim/settings.vim
source ~/.config/nvim/testing.vim
source ~/.config/nvim/colorscheme.vim

" --------------------
" Plugin-settings 
" --------------------
source ~/.config/nvim/plugins/asyncrun.vim
source ~/.config/nvim/plugins/autoformat.vim
source ~/.config/nvim/plugins/cosco.vim
source ~/.config/nvim/plugins/easy_align.vim
source ~/.config/nvim/plugins/floaterm.vim
source ~/.config/nvim/plugins/fugitive.vim
source ~/.config/nvim/plugins/fzf.vim
source ~/.config/nvim/plugins/hexokinase.vim
source ~/.config/nvim/plugins/indentation.vim
source ~/.config/nvim/plugins/languagetool.vim
source ~/.config/nvim/plugins/lightline.vim
source ~/.config/nvim/plugins/quickrunner.vim
source ~/.config/nvim/plugins/splitjoin.vim
source ~/.config/nvim/plugins/tagbar.vim
source ~/.config/nvim/plugins/translator.vim
source ~/.config/nvim/plugins/ultisnips.vim
source ~/.config/nvim/plugins/vifm.vim
source ~/.config/nvim/plugins/vista.vim

" -- Only special plugins --
if &filetype =~ 'py'
    " simpyfold
    source ~/.config/nvim/plugins/simpylfold.vim
endif

" -- neovim nightly --
source ~/.config/nvim/plugins/telescope.vim
source ~/.config/nvim/plugins/nvim_tree.vim
source ~/.config/nvim/plugins/nightly_lsp.vim
source ~/.config/nvim/plugins/nvim_completion.vim
source ~/.config/nvim/plugins/vsnip.vim
source ~/.config/nvim/plugins/dap.vim
lua require("treesitter")
lua require("nvim_tree")
lua require("lspfuzzy_config")
