#!/bin/bash

vardate=$(date +%Y\-%m\-%d); 

for i in *.mjpeg; do
    echo -n "Converting '$i'..."

    if [[ "$vardate.mjpeg" == "$i" ]]; then
        echo "SKIP"
    else
        name="${i%.*}"
        ffmpeg -i $i -vcodec mpeg4 -q:v 0 -loglevel error movies/$name.mp4

		if [[ -s movies/$name.mp4 ]]; then rm $i; fi  # delete original when mp4 was created successfully

        echo "OK"
    fi

done
