#!/bin/bash
urls=$(curl https://api.github.com/repos/antman666/linux-xanmod-tt-uksm-cjktty/releases/latest -s | grep browser_download_url | awk '{print $2}')

for i in ${urls[*]}; do 
		pkg=$(echo $i | awk -F '/' '{print $9}')
		echo Downloading $pkg
		wget -q $i
done
