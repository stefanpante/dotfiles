#!/usr/bin/env bash

appPackages=$(cat ./installers/lists/applications-apt.list)

for app in $appPackages
do 
  echo installing $app via apt
  sudo apt install -y -q $app
done

appPackages=$(cat ./installers/lists/applications-snap.list)

for app in $appPackages
do 
  echo installing $app via snap
  sudo snap install $app
done


curl -o- https://raw.githubusercontent.com/nvm-sh/nvm/v0.35.1/install.sh | bash
source ~/.bashrc

nvm install 12