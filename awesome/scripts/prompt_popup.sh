ffmpeg -loglevel panic -f x11grab -video_size 1920x1080 -y -i :0.0+$1 -filter_complex "boxblur=9" -vframes 1 /tmp/prompt_img$2.png
notify-send "Path:" "/tmp/prompt_img$2.png"
echo "/tmp/prompt_img$2.png"
