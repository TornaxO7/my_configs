" path to arduino command
let g:arduino_cmd = '~/Apps/arduino-1.8.13/arduino'

" build path
let g:arduino_build_path = '~/Apps/arduino-1.8.13'

" serial options

" build arguments
let g:arduino_args = '--verbose-upload'

" board type
let g:arduino_board = 'arduino:avr:uno'

" choose programmer
let g:arduino_programmer = 'arduino:usbtinyisp'

" vim-airline
autocmd BufNewFile,BufRead *.ino let g:airline_section_x='%{MyStatusLine()}'
