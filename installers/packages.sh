#!/bin/bash
appPackages=$(cat ./installers/lists/applications-packages.list)

for app in $appPackages
do 
  echo installing $app via apt
  sudo apt install -y -q $app
done