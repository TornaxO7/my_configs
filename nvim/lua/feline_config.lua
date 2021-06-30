local vi_mode_utils = require 'feline.providers.vi_mode'

local get_diag = function(str)
    local count = vim.lsp.diagnostic.get_count(0, str)
    return (count > 0) and ' ' .. count .. ' ' or ''
end

local vi_mode_component = {
    provider = function()
        local mode_alias = {
            n = 'NORMAL',
            no = 'NORMAL',
            i = 'INSERT',
            v = 'VISUAL',
            V = 'V-LINE',
            [''] = 'V-BLOCK',
            c = 'COMMAND',
            cv = 'COMMAND',
            ce = 'COMMAND',
            R = 'REPLACE',
            Rv = 'REPLACE',
            s = 'SELECT',
            S = 'SELECT',
            [''] = 'SELECT',
            t = 'TERMINAL'
        }
        return ' ' .. mode_alias[vim.fn.mode()] .. ' '
    end,
    hl = function()
        return {
            name = vi_mode_utils.get_mode_highlight_name(),
            fg = 'bg',
            bg = vi_mode_utils.get_mode_color(),
            style = 'bold'
        }
    end,
    right_sep = ' '
}

require'feline'.setup {
    default_fg = '#8FBCBB',
    default_bg = '#2E3440',
    colors = {
        black = '#434C5E',
        skyblue = '#81A1C1',
        cyan = '#88C0D0',
        green = '#8FBCBB',
        oceanblue = '#5E81AC',
        magenta = '#B48EAD',
        orange = '#D08770',
        red = '#EC5F67',
        violet = '#B48EAD',
        white = '#ECEFF4',
        yellow = '#EBCB8B'
    },
    vi_mode_colors = {
        NORMAL = 'cyan',
        OP = 'cyan',
        INSERT = 'white',
        VISUAL = 'green',
        BLOCK = 'green',
        REPLACE = 'yellow',
        ['V-REPLACE'] = 'yellow',
        ENTER = 'cyan',
        MORE = 'cyan',
        SELECT = 'magenta',
        COMMAND = 'cyan',
        SHELL = 'skyblue',
        TERM = 'skyblue',
        NONE = 'orange'
    },
    components = {
        left = {
            active = {
                vi_mode_component, {
                    provider = 'git_branch',
                    icon = ' ',
                    right_sep = '  ',
                    enabled = function()
                        return vim.b.gitsigns_status_dict ~= nil
                    end
                }, {provider = 'file_info'},
                {provider = '', hl = {fg = 'bg', bg = 'black'}}
            },
            inactive = {
                vi_mode_component, {
                    provider = 'git_branch',
                    icon = ' ',
                    right_sep = '  ',
                    enabled = function()
                        return vim.b.gitsigns_status_dict ~= nil
                    end
                }, {provider = 'file_info'},
                {provider = '', hl = {fg = 'bg', bg = 'black'}}
            }
        },
        mid = {active = {}, inactive = {}},
        right = {
            active = {
                {
                    provider = function()
                        return get_diag("Error")
                    end,
                    hl = {fg = 'bg', bg = 'red', style = 'bold'},
                    left_sep = {str = '', hl = {fg = 'red', bg = 'black'}},
                    right_sep = {str = '', hl = {fg = 'yellow', bg = 'red'}}
                }, {
                    provider = function()
                        return get_diag("Warning")
                    end,
                    hl = {fg = 'bg', bg = 'yellow', style = 'bold'},
                    right_sep = {str = '', hl = {fg = 'cyan', bg = 'yellow'}}
                }, {
                    provider = function()
                        return get_diag("Information")
                    end,
                    hl = {fg = 'bg', bg = 'cyan', style = 'bold'},
                    right_sep = {
                        str = '',
                        hl = {fg = 'oceanblue', bg = 'cyan'}
                    }
                }, {
                    provider = function()
                        return get_diag("Hint")
                    end,
                    hl = {fg = 'bg', bg = 'oceanblue', style = 'bold'},
                    right_sep = {
                        str = '',
                        hl = {fg = 'bg', bg = 'oceanblue'}
                    }
                }, {provider = 'file_encoding', left_sep = ' '},
                {provider = 'position', left_sep = ' ', right_sep = ' '}, {
                    provider = 'line_percentage',
                    hl = {fg = 'bg', bg = 'skyblue', style = 'bold'},
                    left_sep = {str = ' ', hl = {fg = 'bg', bg = 'skyblue'}},
                    right_sep = {str = ' ', hl = {fg = 'bg', bg = 'skyblue'}}
                }
            },
            inactive = {}
        }
    },
    properties = {
        force_inactive = {
            filetypes = {
                'NvimTree', 'packer', 'dap-repl', 'dapui_scopes',
                'dapui_stacks', 'dapui_watches', 'dapui_repl', 'LspTrouble'
            },
            buftypes = {'terminal'},
            bufnames = {}
        }
    }
}
