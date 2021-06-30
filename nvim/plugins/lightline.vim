let g:lightline = {
            \ 'enable' : {
            \   'tabline' : 0,
            \ },
            \ 'component' : {
            \       'lineinfo' : 'L: %3l/%L  C: %-2c',
            \       'absolutepath' : '%<%-F',
            \       'branch_symbol' : '',
            \   },
            \
            \ 'colorscheme' : 'solarized',
            \ 'mode_map' : {
            \     'n' : 'Normal  ',
            \     'i' : 'Insert ',
            \     'R' : 'Replace ',
            \     'v' : 'Visual-Single ﭑ',
            \     'V' : 'Visual-lines ﭑ',
            \     "\<C-v>": 'Visual-blocks ﭑ',
            \     'c' : 'Command ',
            \     's' : 'Select 礪',
            \     'S' : 'Select 礪',
            \     "\<C-s>": 'Select 礪',
            \     't': 'Terminal ',
            \   },
            \
            \ 'separator' : {
            \     'left'  : '',
            \     'right' : ''
            \   },
            \
            \ 'subseparator' : {
            \     'left'  : '',
            \     'right' : ''
            \   },
            \
            \ 'active' : {
            \   'left': [ [ 'mode', ],
            \             [ 'spell', 'filename', 'my_readonly', 'my_modified', 'branch_symbol', 'gitbranch' ],
            \             [ 'absolutepath' ]
            \     ],
            \   
            \   'right': [ [ 'lineinfo', 'percent' ],
            \              [ 'filetype' ],
            \              [ 'lsp_progress', 'fileformat', 'fileencoding', 'charvaluehex '],
            \     ],
            \   },
            \
            \ 'inactive' : {
            \   'left': [ [ 'filename' ] ],
            \   'right': [ [ 'lineinfo' ],
            \             [ 'percent' ] ] 
            \   },
            \
            \ 'component_function' : {
            \     'my_modified' : 'LightlineModified',
            \     'gitbranch' : 'FugitiveHead',
            \     'word_counter' : 'WordCounter'
            \   },
            \ 
            \ 'component_expand' : {
            \     'my_readonly' : 'LightlineReadonly',
            \     'lsp_progress' : 'LSPProgress',
            \   },
            \ }

function LightlineReadonly()
    if &readonly
        return ''
    else
        return ''
    endif
endfunction

function LightlineModified()
    if &modified
        return ''
    else
        return ''
    endif
endfunction

function LSPProgress()
    return lua require('lsp-status').register_progress()
endfunction

function WordCounter()
    return wordcount()['words']
endfunction
