path=~/Wallpapers/
pngs=$(ls $path/*.png | wc -l)
# jpgs=$(ls $path/*.jpg | wc -l)

# imagesCount=$(expr $pngs + $jpgs)
imagesCount=$(expr $pngs)

feh --bg-fill $path/$((1 + $RANDOM % $imagesCount)).* --bg-fill $path/$((1 + $RANDOM % $imagesCount)).*

