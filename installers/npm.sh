npmModules=$(cat ./installers/lists/npm.list)
for module in $npmModules
do
  echo installing $module via npm
  sudo npm install -g $module
done