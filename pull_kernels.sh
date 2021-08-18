#!/bin/bash
urls=$(curl https://github.com/antman666/linux-ck-uksm/releases/tag/linux-5.12.19-ck-uksm-3_for_arch -s | grep "/antman666/linux-ck-uksm/releases/download/linux-5.12.19-ck-uksm-3_for_arch/"|awk -F '"|"' '{print$2}')

for i in ${urls[*]}; do 
		pkg=$(echo $i|awk -F '/' '{print$7}')
		echo Downloading $pkg
		wget -q https://github.com/$i
done

urls=$(curl https://github.com/antman666/linux-xanmod-cacule-uksm-cjktty/releases/tag/linux-5.13.11-xanmod-cacule-uksm-cjktty-1_for_arch -s | grep "/antman666/linux-xanmod-cacule-uksm-cjktty/releases/download/linux-5.13.11-xanmod-cacule-uksm-cjktty-1_for_arch/"|awk -F '"|"' '{print$2}')

for i in ${urls[*]}; do 
		pkg=$(echo $i|awk -F '/' '{print$7}')
		echo Downloading $pkg
		wget -q https://github.com/$i
done

urls=$(curl https://github.com/RiverOnVenus/linux-ck-uksm-cjktty/releases/tag/v5.12.19-2 -s | grep "RiverOnVenus/linux-ck-uksm-cjktty/releases/download/v5.12.19-2"|awk -F '"|"' '{print$2}')

for i in ${urls[*]}; do 
		pkg=$(echo $i|awk -F '/' '{print$7}')
		echo Downloading $pkg
		wget -q https://github.com/$i
done
