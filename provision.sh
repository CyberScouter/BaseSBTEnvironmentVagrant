#!/bin/sh

apt-get update


# install dev tools
apt-get install -y git

# install jdk 8
apt-get install -y openjdk-11-jdk

# install sbt
echo "deb https://dl.bintray.com/sbt/debian /" | sudo tee -a /etc/apt/sources.list.d/sbt.list
curl -sL "https://keyserver.ubuntu.com/pks/lookup?op=get&search=0x2EE0EA64E40A89B84B2DF73499E82A75642AC823" | sudo apt-key add
apt-get update
apt-get install -y sbt


#install visual studio code
apt-get install -y software-properties-common apt-transport-https curl
curl -sSL https://packages.microsoft.com/keys/microsoft.asc | apt-key add -

add-apt-repository "deb [arch=amd64] https://packages.microsoft.com/repos/vscode stable main"
apt-get update
apt-get install -y code
#configure vs code
code --install --force scala-lang.scala
code --isntall --force scalameta.metals
