# Screenshots
Colorscheme: Solarized
![oh no! The screenshot can't be load :(](https://github.com/TornaxO7/my_configs/blob/master/vifm/Screenshot.png?raw=true)

# Dependencies
These dependencies to have an default-opener, depending on the file type.
- `aunpack`
- `highlight`
- `sioyek`
- `dragon-drag-and-drop`
- `ffmpegthumbnailer`
- `firefox`/`chromium`
- `man`
- `mypaint`
- `unzip`
- `odt2txt` and `docx2txt`
- `viewnior`

# File structure
```
vifm/
├── colors/                     # contains all themes
│   ├── my.vifm                 # just a random one
│   ├── onedark.vifm
│   ├── solarized_dark.vifm
│   ├── solarized_light.vifm
│   └── tokyo-night-storm.vifm
├── README.md
├── scripts                    # contains some extra-scripts which you can use,
                               # but I don't use them anymore
│   ├── getVIFMid.sh
│   ├── kittyimg
│   ├── LICENSE
│   ├── README
│   ├── vifmimg
│   ├── vifmrun
│   └── vifmrun.sh
├── settings               # contains other parts of the `vifmrc`
│   ├── abbreviations.vifm # contains all available abbreviations
│   ├── commands.vifm      # contains all available commands
│   ├── favicons.vifm      # contains the different favicons
│   ├── filetypes.vifm     # contains the actions for filetypes (like file
                             preview)
│   ├── highlighting.vifm  # contains the rules how which files should be
                           # highlighted in the file-preview
│   └── mappings.vifm      # contains the mappings
└── vifmrc                 # The main-config file.
```
