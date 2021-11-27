#!/bin/bash

# Get random images from unsplash

for i in {1..32}
do

    WIDTH=$((100 + $RANDOM % 1080))
    HEIGHT=$((100 + $RANDOM % 1080))

    URL="https://source.unsplash.com/random/"$WIDTH"x"$HEIGHT"/?img=1"

    wget $URL -O "images-raw/"$i".jpg"
done





#wget https://source.unsplash.com/random/800x800/?img=1 -O images/test.jpg