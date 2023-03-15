#!/bin/sh
echo -e "\u001b[1m\u001b[93mBeginning the installation process of fdk\u001b[97m-\u001b[93maac \u001b[97m. . .\033[0m"
echo "deb http://www.deb-multimedia.org stretch main non-free" >> /etc/apt/sources.list
echo -e "\u001b[1m\u001b[97m[\u001b[32m+\u001b[97m] \u001b[95mAdded required sources \u001b[97m. . ."
command > /dev/null 2>&1 apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 5C808C2B65558117
echo -e "\u001b[1m\u001b[97m[\u001b[32m+\u001b[97m] \u001b[95mAdded required apt keys & authorized sources \u001b[97m. . ."
command > /dev/null 2>&1 sudo apt-get update
echo -e "\u001b[1m\u001b[97m[\u001b[32m+\u001b[97m] \u001b[95mUpdated packages, databases & sources \u001b[97m. . ."
echo -e "\u001b[1m\u001b[97m[\u001b[32m+\u001b[97m] \u001b[95mInstalling main packages \u001b[97m(\u001b[93mFFmpeg\u001b[97m, \u001b[93mFDK-AAC\u001b[97m) \u001b[97m. . ."
command > /dev/null 2>&1 sudo apt-get -y install libfdk-aac-dev
command > /dev/null 2>&1 sudo apt-get -y install fdkaac
command > /dev/null 2>&1 sudo apt-get -y install ffmpeg libfdk-aac-dev libfaac-dev
echo -e "\u001b[1m\u001b[92mSuccessfully configured and installed ffmpeg \u001b[97m& \u001b[92mfdkaac\u001b[97m!"
