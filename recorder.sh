#!/bin/bash
# URL of the creator
URL="https://www.youtube.com/@DOVETELEVISION/live"

while true; do
  echo "Railway Robot: Hunting for stream..."
  yt-dlp -f "bestvideo[ext=mp4]+bestaudio[ext=m4a]/best[ext=mp4]/best" \
         --live-from-start \
         --wait-for-video 60 \
         --output "/downloads/recording_%(title)s.mp4" \
         "$URL"
  sleep 60
done
