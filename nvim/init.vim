if empty(glob('~/.local/share/nvim/site/pack/packer/start/packer.nvim'))
    silent !git clone --depth 1 https://github.com/wbthomason/packer.nvim ~/.local/share/nvim/site/pack/packer/start/packer.nvim
    source ~/.config/nvim/init.vim
endif

lua require("plugins")

let g:mapleader = " "
let g:maplocalleader = " "

source ~/.config/nvim/settings.vim
source ~/.config/nvim/autocmds.vim
source ~/.config/nvim/commands.vim
source ~/.config/nvim/mappings.vim
source ~/.config/nvim/colorscheme.vim
