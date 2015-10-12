@echo off
set /p HOST="Enter host or ipaddress: "
echo "Sending screen to %HOST%"
cls
REM D:\gstreamer\1.0\x86_64\bin\gst-launch-1.0.exe gdiscreencapsrc ! videoconvert ! video/x-raw,format=I420 ! jpegenc ! rtpjpegpay ! udpsink host=%HOST% port=5000
D:\gstreamer\1.0\x86_64\bin\gst-launch-1.0.exe gdiscreencapsrc x=0 y=0 width=640 height=480 ! videoconvert ! x264enc tune=zerolatency threads=2 byte-stream=true intra-refresh=true option-string="bframes=0:force-cfr:no-mbtree:sync-lookahead=0:sliced-threads:rc-lookahead=0" ! h264parse config-interval=1 ! rtph264pay ! udpsink host=%HOST% port=5000
