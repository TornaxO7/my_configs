# Screenshot
![Yeet](Screenshot.png)

# Dependencies
- Neovim nightly
- the appropriate lsp-servers
- `git`

# Repository structure
```
my_configs
├── autocmds.vim      # here are my autocommands
├── coc-settings.json # some settings for coc (I don't use it anymore)
├── colors            # solarized colorschemes
├── colorscheme.vim   # my settings for solarized colorscheme
├── commands.vim      # some "self"-made commands
├── ftplugin          # mappings and settings for specifique filetypes
├── ginit.vim         # GUI settings (I don't use it anymore)
├── init.vim          # All Plugins are loaded here and the settings are sourced from the plugins directory
├── lua               # plugin-settings for lua stuff like LSP. See `## lua-dir`
├── mappings.vim      # my mappings which are independent from the plugins
├── plugins           # all settings from almost all plugins I've tried :D
├── README.md         # What you are looking at...
├── Screenshot.png    # The screenshot from the README
└── settings.vim      # all settings for vim
```

## lua-dir
The `lua/` directory has a little structure. In general there should be for each
plugin, which has some keybindings and/or settings a directory which is named as
`<plugin_name>_settings` which has the following structure:

```
lua
├── <plugin_name>_settings/
    ├── settings.lua    # the heart of the config. This is always loaded first in
                        # each plugin. This normally contains the `setup()` function
                        # of each plugin and gives it settings.
                        # This file also loads the other `.lua` files in this
                        # directory (commands.lua, keybindings.lua, etc.).
    ├── commands.lua    # This file contains all extra-commands for this plugin
    ├── keybindings.lua # This file contains all mapped keybindings which are
                        # using this plugin.
    ├── whichkey.lua    # Contains the setup for whichkey for this plugin.
    ...                 # Any extra-directory or file is just to split up some
                        # files.
...
```
