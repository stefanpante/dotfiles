#!/usr/bin/env bash

echo "Start installation"
bash ./installers/import-repositories.sh

sudo apt update
sudo apt upgrade

bash ./installers/packages.sh
bash ./installers/tar.sh
bash ./installers/deb.sh
bash ./installers/npm.sh

sudo apt autoremove
sudo apt autoclean
echo "done installing"
