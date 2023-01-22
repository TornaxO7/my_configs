local function exists(path)
    local file = io.open(path, "r")
        if file ~= nil then
        io.close(file)
        return true
    else
        return false
    end
end

return {
		"williamboman/mason.nvim",
		dependencies = {
            "folke/which-key.nvim",
            {
                "jayp0521/mason-nvim-dap.nvim",
                dependencies = {
                    "mfussenegger/nvim-dap",
                },
            }
		},
		init = function()
            local mason_data_dir = vim.fn.expand("~/Apps/nvim_mason_dir");
            
            if not(exists(mason_data_dir)) then
                os.execute("mkdir -p " .. mason_data_dir)
            end
            
            require("mason").setup({
                install_root_dir = vim.fn.expand(mason_data_dir),
            })
            
            require("mason-nvim-dap").setup({})
            require("plugins.mason_settings.whichkey")
		end,
}
