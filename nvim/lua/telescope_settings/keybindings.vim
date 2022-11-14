function! TelescopeOnToplevel(command)
  let toplevel = trim(system("git rev-parse --show-toplevel"))

  if v:shell_error != 0
    " fallback should we not be in a git repo atm
    let toplevel = getcwd()
  endif

  execute a:command . " cwd=" . fnameescape(toplevel)
endfunction

nnoremap mf <Cmd>call TelescopeOnToplevel("Telescope find_files")<CR>
nnoremap mg <Cmd>call TelescopeOnToplevel("Telescope live_grep")<CR>
nnoremap mc <Cmd>Telescope commands<CR>
nnoremap mh <Cmd>Telescope help_tags<CR>
nnoremap ml <Cmd>Telescope symbols<CR>
