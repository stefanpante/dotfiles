#!/usr/bin/env bash

appDebs=$(cat ./installers/lists/applications-deb.list)
for app in $appDebs 
do 
  echo installing $app via deb
  sudo wget -O 'temp.deb' $app
  sudo dpkg -i temp.deb
  sudo rm -f temp.deb
done