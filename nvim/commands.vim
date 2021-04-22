command! StopLSP lua vim.lsp.stop_client(vim.lsp.get_active_clients())
command! CompeEnable lua require('compe').setup()
command! CompeDisable call compe#setup({'enabled': v:false}, 0)
command! CopyPath let @"=expand("%:p")
