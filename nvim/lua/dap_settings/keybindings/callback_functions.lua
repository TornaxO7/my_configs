local dap = require("dap")
local dapui = require("dapui")

local callback_functions = {
    open_repl = function()
        dap.repl.toggle()
        dapui.toggle()
        dap.continue()
    end,
    step_over = function()
        dap.step_over()
    end,
    step_into = function()
        dap.step_into()
    end,
    continue = function()
        dap.continue()
    end,
    toggle_breakpoint = function()
        dap.toggle_breakpoint()
    end,
    set_breakpoint = function()
        dap.set_breakpoint(vim.fn.input('Breakpoint condition: '))
    end,
    toggle_ui = function()
        dapui.toggle()
    end,
    evaluate_symbol = function()
        dapui.eval()
    end,
}

return callback_functions
