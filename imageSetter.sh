path=~/Wallpapers/
pngs=$(ls $path/*.png | wc -l)
# jpgs=$(ls $path/*.jpg | wc -l)

# imagesCount=$(expr $pngs + $jpgs)
imagesCount=$(expr $pngs)

# For Xorg (requires feh)
# feh --bg-fill $path/$((1 + $RANDOM % $imagesCount)).* --bg-fill $path/$((1 + $RANDOM % $imagesCount)).* 

# For wayland (requires swww)
swww img -o HDMI-A-1 $path/$((1 + $RANDOM % $imagesCount)).* --transition-step 10 --transition-fps 60 --transition-type random
swww img -o HDMI-A-2 $path/$((1 + $RANDOM % $imagesCount)).* --transition-step 10 --transition-fps 60 --transition-type random 

