folder=$(dirname "$0")
vardate=$(date +%Y\-%m\-%d); 
vartime=$(date +%H.%M.%S);

screencapture -t png -x /tmp/tmp.png
/usr/local/bin/ffmpeg -i /tmp/tmp.png -y /tmp/tmp.mjpeg
cat /tmp/tmp.mjpeg >> $folder/mjpeg/$vardate.mjpeg

txt=$folder/txt/$vardate.txt
echo ------------------------------------------------------ >> $txt
echo $vardate $vartime                                      >> $txt
echo ------------------------------------------------------ >> $txt
/usr/local/bin/pngtopnm /tmp/tmp.png | /usr/local/bin/ocrad >> $txt