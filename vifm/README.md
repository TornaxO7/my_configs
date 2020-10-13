# Screenshots
Colorscheme: Solarized
![oh no! The screenshot can't be load :(](https://github.com/TornaxO7/my_configs/blob/master/vifm/screenshot.png?raw=true)

# Dependencies
- `highlight`
- `python-ueberzug`
- `zathura`
- `dragon-drag-and-drop`
- `ffmpegthumbnailer`
- `firefox`/`chromium`
- `man`
- `mypaint`
- `unzip`
- `odt2txt` and `docx2txt`
- `viewnior`
- `giflib` and `gifsicle`

# Information
First of all you need to create an alias to the `scripts/vifmrun` file! Otherwise the preview **won't** work!!! <br>
Please consider installing [überzug](https://github.com/seebye/ueberzug) as well in order to have the image preview! Anyway if you have the same issue as me that the image doesn't close if you enter the shell, than you'll need to add the command `clear` into your mappings like this:
```vim
nmap hs :cd ~/ | clear<CR>
```
So if you type `hs` in `vifm`, the image will disappear and you see your normal shell :)<cr>

I'm using [vifmimg](https://github.com/cirala/vifmimg) to preview images. So credits are going to them!<cr>

# Hint
If the pdf-preview is a little bit slow, than you can edit the convert-type in my `filetypes.vifm` by changing the last argument in this line:
```vim
fileviewer *.pdf
        \ vifmimg pdfpreview %px %py %pw %ph %f "jpg"
        \ %pc
        \ vifmimg clear
```
You can set the value into `png` which is (in my opinion) only a little bit slower than `jpg`.

# General commands
* `print`
 	This will let you print your selected file.
* `dragon`
	Drag your selected file.
