local key = require("which-key")

local function git_root()
    local git_program = io.popen("git rev-parse --show-toplevel", "r")

    if git_program then
        local root_dir = git_program:read("a")
        git_program:close()
        return root_dir:sub(1, -2)
    else
        return "."
    end
end

key.register({
    f = {function() require("telescope.builtin").find_files({ cwd = git_root()}) end, "files"},
    g = {function() require("telescope.builtin").live_grep({ cwd = git_root()}) end, "grep"},
    b = {require("telescope.builtin").builtin, "builtin"},
    s = {require("telescope.builtin").symbols, "symbols"},
    h = {require("telescope.builtin").help_tags, "help tags"},
    c = {require("telescope.builtin").commands, "commands"},
    r = {require("telescope.builtin").lsp_references, "references"},
}, {prefix = "m"})
