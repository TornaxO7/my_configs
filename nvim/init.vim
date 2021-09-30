" download packer automatically if you doesn't exist
if empty(glob('~/.local/share/nvim/site/autoload/plug.vim'))
    silent !curl -fLo ~/.local/share/nvim/site/autoload/plug.vim --create-dirs
        \ https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
endif
" ============
" Plugins
" ============
call plug#begin('~/.vim/plugged')
Plug 'skywind3000/asyncrun.vim'
Plug 'lukas-reineke/indent-blankline.nvim',
Plug 'tpope/vim-surround'                                                " edit the surroundings fast
Plug 'voldikss/vim-translator'                                           " translator
Plug 'vim-scripts/loremipsum'                                            " generate lorem ipsum text
Plug 'davidgranstrom/nvim-markdown-preview'
Plug 'andrewradev/splitjoin.vim'                                         " split and join stuff faster :D
Plug 'sirver/ultisnips'                                                  " good snippet plugin
Plug 'vifm/vifm.vim'                                                     " use vifm in vim
Plug 'voldikss/vim-floaterm'                                             " terminal in floating window
Plug 'jamessan/vim-gnupg'                                                " for (un)encrypting gpg files
Plug 'junegunn/vim-easy-align'                                           " easy aligning
Plug 'thinca/vim-quickrun'                                               " compile and execute files :)
Plug 'airblade/vim-rooter'                                               " get the project root
Plug 'lifepillar/vim-solarized8'                                         " colorscheme
Plug 'lervag/vimtex'                                                     " latex
Plug 'tpope/vim-fugitive'
Plug 'dpelle/vim-languagetool'                                           " look for grammar mistakes
Plug 'chiel92/vim-autoformat'
Plug 'junegunn/fzf.vim'
Plug 'tweekmonster/startuptime.vim'
Plug 'andrejlevkovitch/vim-lua-format'
Plug 'chrisbra/unicode.vim'
Plug 'itchyny/lightline.vim'
Plug 'haya14busa/vim-stacktrace', { 'do': 'make' }
Plug 'chrisbra/csv.vim'

" -- neovim nightly plugins --
Plug 'nvim-treesitter/nvim-treesitter', {'do': ':TSUpdate'} " We recommend updating the parsers on update
Plug 'romgrk/nvim-treesitter-context'
Plug 'nvim-treesitter/playground'
Plug 'ojroques/nvim-lspfuzzy'
Plug 'neovim/nvim-lspconfig'
Plug 'kosayoda/nvim-lightbulb'
Plug 'kyazdani42/nvim-web-devicons'                         " nice devicons
Plug 'mfussenegger/nvim-dap'
Plug 'theHamsta/nvim-dap-virtual-text'
Plug 'rcarriga/nvim-dap-ui'
Plug 'liuchengxu/vista.vim'                                 " display structure of code
Plug 'folke/lsp-trouble.nvim'                               " nice diagnostic summary
Plug 'b3nj5m1n/kommentary'                                  " (un)comment stuff faster
Plug 'folke/which-key.nvim'                                 " display keybindings
Plug 'kevinhwang91/nvim-bqf'
Plug 'romgrk/barbar.nvim'
Plug 'norcalli/nvim-colorizer.lua'
Plug 'andweeb/presence.nvim'
Plug 'nvim-lua/lsp-status.nvim'
Plug 'folke/lsp-colors.nvim'
Plug 'williamboman/nvim-lsp-installer'
Plug 'ms-jpq/chadtree', {'branch': 'chad', 'do': 'python3 -m chadtree deps'}
Plug 'Pocco81/DAPInstall.nvim'

Plug 'hrsh7th/cmp-nvim-lsp'
Plug 'hrsh7th/cmp-buffer'
Plug 'hrsh7th/nvim-cmp'
Plug 'hrsh7th/cmp-path'
Plug 'hrsh7th/cmp-vsnip'
Plug 'hrsh7th/vim-vsnip'
Plug 'nvim-lua/plenary.nvim'
Plug 'nvim-lua/popup.nvim'
Plug 'saecki/crates.nvim'
Plug 'simrat39/rust-tools.nvim'
call plug#end()

" ------------------
" Main settings
" ------------------
lua require("comp")

" leader for plugins
let g:mapleader = " "
let g:maplocalleader = " "

source ~/.config/nvim/settings.vim
source ~/.config/nvim/autocmds.vim
source ~/.config/nvim/commands.vim
source ~/.config/nvim/mappings.vim
source ~/.config/nvim/testing.vim

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
source ~/.config/nvim/plugins/indentation.vim
source ~/.config/nvim/plugins/languagetool.vim
source ~/.config/nvim/plugins/lightline.vim
source ~/.config/nvim/plugins/nvim_markdown_preview.vim
source ~/.config/nvim/plugins/quickrunner.vim
source ~/.config/nvim/plugins/rooter_settings.vim
source ~/.config/nvim/plugins/splitjoin.vim
source ~/.config/nvim/plugins/translator.vim
source ~/.config/nvim/plugins/ultisnips.vim
source ~/.config/nvim/plugins/vifm.vim

" -- neovim nightly --
source ~/.config/nvim/plugins/barbar.vim
source ~/.config/nvim/plugins/nightly_lsp.vim
source ~/.config/nvim/plugins/vsnip.vim
source ~/.config/nvim/plugins/dap.vim
source ~/.config/nvim/plugins/lsp_trouble.vim
source ~/.config/nvim/plugins/chadtree.vim
source ~/.config/nvim/plugins/vista.vim
lua require("treesitter")
lua require("kommentary_settings")
lua require("which_key")
lua require("colorizer").setup()
lua require("discord")
" lua require("dapinstall")
lua require('rust-tools').setup({})

source ~/.config/nvim/last.vim
source ~/.config/nvim/colorscheme.vim
