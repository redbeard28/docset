#!/bin/bash

packer_version=`curl -X GET "https://releases.hashicorp.com/packer/" |grep "<a href=" | sed "s/<a href/\\n<a href/g" | sed 's/\"/\"><\/a>\n/2'|grep packer_| sort |uniq|tail -n1|sed "s/>//g"|sed "s/<\/a//g"`

short_version=`echo $packer_version | sed "s/packer_//g"`

echo "La version de packer est: $packer_version"
echo ""
echo " La version short est: $short_version"

if [ -L /usr/bin/packer ];then
    sudo unlink /usr/bin/packer
fi

wget https://releases.hashicorp.com/packer/${short_version}/${packer_version}_linux_amd64.zip
sudo apt install unzip -y

sudo unzip ${packer_version}_linux_amd64.zip -d /opt/${packer_version}
sudo ln -s /opt/${packer_version}/packer /usr/bin/packer