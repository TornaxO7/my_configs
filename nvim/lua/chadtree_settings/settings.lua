local opts = {noremap = true, silent = true}
vim.api.nvim_set_keymap("n", "<C-e>", "<cmd>CHADopen<cr>", opts)

local chadtree_settings = {
    ['keymap'] = {
        ['v_split'] = {'v'},
        ['h_split'] = {'s'},
        ['toggle_follow'] = {'f'},
        ['secondary'] = {'l'},
        ['collapse'] = {'h'},
        ['refocus'] = {'R'},
        ['stat'] = {'K'},
        ['copy_name'] = {'y'},
        ['copy_basename'] = {'Y'},
        ['filter'] = {'='},
        ['select'] = {'t'},
        ['clear_selection'] = {'<Esc>'},
        ['new'] = {'a'},
        ['rename'] = {'r'},
        ['copy'] = {'p'},
        ['cut'] = {'x'},
        ['trash'] = {'d'},
        ['toggle_hidden'] = {'H'},
    }
}

vim.api.nvim_set_var("chadtree_settings", chadtree_settings)
