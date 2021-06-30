" download the vim-plug automatically if you doesn't exist
if empty(glob('~/.local/share/nvim/site/autoload/plug.vim'))
    silent !curl -fLo ~/.local/share/nvim/site/autoload/plug.vim --create-dirs https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
endif

" ============
" Plugins
" ============
call plug#begin('~/.vim/plugged')
Plug 'skywind3000/asyncrun.vim'
Plug 'lukas-reineke/indent-blankline.nvim', { 'branch' : 'lua' }
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
Plug 'tpope/vim-fugitive'                                                " git wrapper
Plug 'dpelle/vim-languagetool'                                           " look for grammar mistakes
Plug 'chiel92/vim-autoformat'
Plug 'junegunn/fzf.vim'
Plug 'tweekmonster/startuptime.vim'
Plug 'andrejlevkovitch/vim-lua-format'
Plug 'chrisbra/unicode.vim'
Plug 'itchyny/lightline.vim'

" -- neovim nightly plugins --
Plug 'nvim-treesitter/nvim-treesitter', {'do': ':TSUpdate'} " We recommend updating the parsers on update
Plug 'romgrk/nvim-treesitter-context'
Plug 'haringsrob/nvim_context_vt'                           " displaying the context of the current scope
Plug 'nvim-treesitter/playground'
Plug 'ojroques/nvim-lspfuzzy'
Plug 'neovim/nvim-lspconfig'
Plug 'kosayoda/nvim-lightbulb'
Plug 'hrsh7th/nvim-compe'
Plug 'kyazdani42/nvim-web-devicons'                         " nice devicons
Plug 'hrsh7th/vim-vsnip'                                    " snippet autocompletion and move
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
source ~/.config/nvim/plugins/nvim_completion.vim
source ~/.config/nvim/plugins/vista.vim
lua require("treesitter")
lua require("kommentary_settings")
lua require("which_key")
lua require("colorizer").setup()

source ~/.config/nvim/last.vim
source ~/.config/nvim/colorscheme.vim
