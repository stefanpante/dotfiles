#!/bin/bash
appPackages=$(cat ./installers/lists/applications-apt.list)

for app in $appPackages
do 
  echo installing $app via apt
  sudo apt install -y -q $app
done

appPackages=$(cat ./installers/lists/applications-snap.list)

for app in $appPackages
do 
  echo installing $app via apt
  sudo apt install -y -q $app
done