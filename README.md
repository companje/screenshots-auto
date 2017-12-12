# Screenshots-Auto
Script for making a screenshot of your Mac desktop every 5 seconds, storing it as one .mjpeg file per day. It also creates one .txt file per day containing all the OCR text of the screenshots. 

## Install
```bash
brew install imagemagick netpbm ffmpeg ocrad
```

clone this repo to for example in `~/Documents/screenshots-auto`.

copy `nl.companje.screenshots.plist` to `~/Library/LaunchAgents`

```bash
#launchctl unload nl.companje.screenshots.plist
launchctl load nl.companje.screenshots.plist
launchctl start nl.companje.screenshots
#tail /var/log/system.log
```

make sure to fix filepaths where necessary.

