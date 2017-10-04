echo "Encoding to video all Output_XXX.png"


ffmpeg -framerate 5 -i output_%03d.png -vf scale=1080:1080 -c:v libx264 output.mp4

mpv --loop-file output.mp4
