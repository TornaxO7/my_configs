-- See `:help vim.lsp.start_client` for an overview of the supported `config` options.
local config = {
  cmd = {

    'java',

    '-Declipse.application=org.eclipse.jdt.ls.core.id1',
    '-Dosgi.bundles.defaultStartLevel=4',
    '-Declipse.product=org.eclipse.jdt.ls.core.product',
    '-Dlog.protocol=true',
    '-Dlog.level=ALL',
    '-Xms1g',
    '--add-modules=ALL-SYSTEM',
    '--add-opens', 'java.base/java.util=ALL-UNNAMED',
    '--add-opens', 'java.base/java.lang=ALL-UNNAMED',

    '-jar', '/home/tornax/Apps/jdtls_1_10_0/plugins/org.eclipse.equinox.launcher_1.6.400.v20210924-0641.jar',
    '-configuration', '/home/tornax/Apps/jdtls_1_10_0/config_linux',
    '-data', vim.fn.getcwd(),
  },

  root_dir = require('jdtls.setup').find_root({'.git', 'mvnw', 'gradlew'}),

  -- Here you can configure eclipse.jdt.ls specific settings
  -- See https://github.com/eclipse/eclipse.jdt.ls/wiki/Running-the-JAVA-LS-server-from-the-command-line#initialize-request
  -- for a list of options
  settings = {
    java = {
    }
  },

  -- Language server `initializationOptions`
  -- You need to extend the `bundles` with paths to jar files
  -- if you want to use additional eclipse.jdt.ls plugins.
  --
  -- See https://github.com/mfussenegger/nvim-jdtls#java-debug-installation
  --
  -- If you don't plan on using the debugger or other eclipse.jdt.ls plugins you can remove this
  init_options = {
    bundles = {
        vim.fn.glob("/home/tornax/Apps/java-debug/com.microsoft.java.debug.plugin/target/com.microsoft.java.debug.plugin-0.36.0.jar")
    }
  },
}

local function loader(on_attach, capabilities)
    local jdtls = require("jdtls")
    local function attach_wrapper(client, bufnr)
        jdtls.setup_dap({hotcodereplace = "auto"})
        on_attach(client, bufnr)
    end

    config.on_attach = attach_wrapper
    config.capabilities = capabilities
    jdtls.start_or_attach(config)
end

return loader
