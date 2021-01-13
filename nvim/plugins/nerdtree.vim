" open Nerdtree when startup
"autocmd vimenter * NERDTree

" close nerdtree if nerdtree is the last window
autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTree") && b:NERDTree.isTabTree()) | q | endif
