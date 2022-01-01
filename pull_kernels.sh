#!/bin/bash
urls=$(curl https://github.com/antman666/linux-ck-uksm/releases/tag/linux-ck-uksm_v5.15.12-1 -s | grep "/antman666/linux-ck-uksm/releases/download/linux-ck-uksm_v5.15.12-1/"|awk -F '"|"' '{print$2}')

for i in ${urls[*]}; do 
		pkg=$(echo $i|awk -F '/' '{print$7}')
		echo Downloading $pkg
		wget -q https://github.com/$i
done

urls=$(curl https://github.com/antman666/linux-xanmod-tt-uksm-cjktty/releases/tag/linux-xanmod-tt-uksm-cjktty_v5.15.12-1_gcc -s | grep "/antman666/linux-xanmod-tt-uksm-cjktty/releases/download/linux-xanmod-tt-uksm-cjktty_v5.15.12-1_gcc/"|awk -F '"|"' '{print$2}')

for i in ${urls[*]}; do 
		pkg=$(echo $i|awk -F '/' '{print$7}')
		echo Downloading $pkg
		wget -q https://github.com/$i
done
