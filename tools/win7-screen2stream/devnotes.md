
Screen capture on windows:
* Gstreamer
* screen-capture-recorder https://github.com/rdp/screen-capture-recorder-to-video-windows-free

Send stream:

  @echo off
  set /p HOST="Enter host or ipaddress: "
  echo "Sending screen to %HOST%"
  gst-launch-1.0.exe gdiscreencapsrc ! videoconvert ! video/x-raw,format=I420 ! jpegenc ! rtpjpegpay ! udpsink host=%HOST% port=5000


Playback on android:
* GoodPlayer https://play.google.com/store/apps/details?id=com.hustmobile.goodplayer&hl=en
