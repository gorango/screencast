#!/bin/bash

#
# Usage:
# -------------------------------------------------------
# `screencast`
#   saves video file in the current folder
# `screencast -d foo`
#   saves video file in the 'foo' folder (creates folder if none exists)
#
# TERMINATE BY ENTERING `quit` INTO THE RUNNING TERMINAL
#
# DO NOT CLOSE WITH `Ctrl-C` -- CAN CAUSE CORRUPTION !!!
#

DATE=$(date +%y%m%d%H%M)
NAME="screencast-$DATE"
FILE="$NAME"

while [[ $# > 1 ]]
do
key="$1"

case $key in
    -d|--directory)
    DIR="$2"
    FILE="$DIR/$NAME"
    $(mkdir -p $DIR)
    shift;;
    *)
esac
shift
done

cvlc screen:// \
-I rc \
--screen-follow-mouse \
--screen-fps 5 \
:sout="#transcode{vcodec=h264,vb=800,fps=5,scale=1,acodec=none}:duplicate{dst=std{access=file,mux=mp4,dst=$FILE}}"

