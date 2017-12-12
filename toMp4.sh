#!/bin/bash

vardate=$(date +%Y\-%m\-%d); 
for i in mjpeg/*.mjpeg; do
    echo -n "Converting '$i'..."

    if [[ "mjpeg/$vardate.mjpeg" == "$i" ]]; then
        echo "SKIP"
    else
		filename=${i##*/} #filename from path
        name="${filename%.*}" #name without extension

        echo -n " to 'mp4/$name.mp4'..."

        ffmpeg -i $i -vcodec mpeg4 -q:v 0 -loglevel error mp4/$name.mp4

		# if [[ -s mp4/$name.mp4 ]]; then rm $i; fi  # delete original when mp4 was created successfully

        echo "OK"
    fi

done
