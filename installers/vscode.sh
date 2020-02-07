#!/usr/bin/env bash
echo "install visual Code extensions"
extensions=$(cat ./installers/lists/vscode-extensions.list)
for extension in $extensions
do
  echo installing $extension
  npm install -g $extension
done

echo "done installing extensions"