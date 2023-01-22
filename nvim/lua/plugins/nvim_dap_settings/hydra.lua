local dap = require("dap")
local dapui = require("dapui")

require("hydra")({
    name = "DAP",
    mode = "n",
    body = "<localleader>d",
    config = {
        color = "pink",
    },
    heads = {
        {"b", dap.toggle_breakpoint, {desc = "toggle breakpoint", nowait = true}},
        {"c", dap.continue, {desc = "continue", nowait = true}},
        {"t", dap.terminate, {desc = "terminate", nowait = true}},
        {"u", dapui.toggle, {desc = "dap-ui toggle", nowait = true}},

        {"n", dap.step_into, {desc = "step into", nowait = true}},
        {"r", dap.step_over, {desc = "step over", nowait = true}},
        {"s", dap.step_out, {desc = "step out", nowait = true}},
    }
})
