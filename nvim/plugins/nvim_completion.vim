inoremap <silent><expr> <C-Space> compe#complete()
inoremap <silent><expr> <Tab>      compe#confirm('<Tab>')
"inoremap <silent><expr> <C-e>     compe#close('<C-e>')
inoremap <silent><expr> <C-f>     compe#scroll({ 'delta': +4 })
inoremap <silent><expr> <C-d>     compe#scroll({ 'delta': -4 })

highlight link CompeDocumentation NormalFloat

lua require("nvim_compe")
