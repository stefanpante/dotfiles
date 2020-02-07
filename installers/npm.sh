#!/usr/bin/env bash

npmModules=$(cat ./installers/lists/npm.list)
for module in $npmModules
do
  echo installing $module via npm
  npm install -g $module
done