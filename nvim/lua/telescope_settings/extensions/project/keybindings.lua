vim.api.nvim_set_keymap(
        'n',
        'mp',
        ":lua require'telescope'.extensions.project.project{}<CR>",
        {noremap = true, silent = true}
)
