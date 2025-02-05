#!/bin/bash

# This script downloads the workshop slides from Google Drive
# File URL: https://drive.google.com/file/d/1OlVJvRKx11RvBhNXLH61ZtDp2PogzKgY/view?usp=drive_link
# File ID: 1OlVJvRKx11RvBhNXLH61ZtDp2PogzKgY

if gdown 1OlVJvRKx11RvBhNXLH61ZtDp2PogzKgY -O intro-to-unix.pdf; then
	    echo "Slides download complete!"
else
    echo "Error: Failed to download slides. Please check your internet connection and DNS settings."
fi

