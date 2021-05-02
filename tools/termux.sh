#!/data/data/com.termux/files/usr/bin/bash

echo "[ spotifydl ] Installing required packages..."

# Install packages
pkg install -y nodejs ffmpeg

# Get spotify-dl from npmjs
echo "[ spotifydl ] Installing spotify-dl"
npm install -g spotify-dl

# Setup app sharing script
echo "[ spotifydl ] Setting up scripts..."

if [ ! -d "$HOME/bin" ]; then
    mkdir "$HOME/bin"
fi

curl https://https://gist.githubusercontent.com/zerorad/deb627f602f540fb186ba7ff5c3e2100/raw/a385b5a86a4b3eac8f64b3d5dc3dca433d1ca4e7/termuxopen > "$HOME/bin/termux-url-opener"

echo "[ spotifydl ] Setting up storage..."
termux-setup-storage

echo "Sucess!"
echo "You can now share song from Spotify App to Termux and Music will be downloaded."
exit 0
