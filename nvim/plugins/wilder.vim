call wilder#enable_cmdline_enter()
set wildcharm=<Tab>
cmap <expr> <Tab> wilder#in_context() ? wilder#next() : "\<Tab>"
cmap <expr> <S-Tab> wilder#in_context() ? wilder#previous() : "\<S-Tab>"

" only / and ? are enabled by default
call wilder#set_option('modes', ['/', '?', ':'])
call wilder#set_option('renderer', [
      \   wilder#branch(
      \     [
      \       wilder#check({_, x -> empty(x)}),
      \       wilder#history(),
      \       wilder#result({
      \         'draw': [{_, x -> ' ' . x}],
      \       }),
      \     ],
      \     wilder#cmdline_pipeline(),
      \     wilder#search_pipeline(),
      \   ),
      \ ])

"call wilder#set_option('pipeline', [
"      \   wilder#branch(
"      \     wilder#python_file_finder_pipeline({
"      \       'file_command': ['find', '.', '-type', 'f', '-printf', '%P\n'],
"      \       'dir_command': ['find', '.', '-type', 'd', '-printf', '%P\n'],
"      \       'filters': ['fuzzy_filter', 'difflib_sorter'],
"      \     }),
"      \     wilder#cmdline_pipeline(),
"      \     wilder#python_search_pipeline(),
"      \   ),
"      \ ])
