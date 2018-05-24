#!/bin/bash
while read line
do
    echo installing $line via tarball
    # split the line ; delimited
    IFS=';'; application=($line); unset IFS;
    applicationName=${application[0]}
    applicationUrl=${application[1]}
    # create dir for opt
    mkdir /opt/$applicationName
    wget -qO- $applicationUrl | tar xvz -C /opt/$applicationName --strip-components=1
done < "./installers/lists/applications-tars.list"