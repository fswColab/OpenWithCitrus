#! /usr/bin/env sh

if ! [ $(id -u) = 0 ]; then
	echo 'This script must be run as root'
	exit 1
fi

# apt-get caja-acions
echo '[+]Installing caja-actions...'
apt-get -y install caja-actions

echo '[+]Copying file ...'

# cp open_with_citrus.Rscript
mkdir /home/citrus/.local/share/bin > /dev/null 2>&1
cp ./open_with_citrus.Rscript /home/citrus/.local/share/bin/

# cp open_with_citrus.desktop & citrus icon
mkdir /home/citrus/.local/share/file-manager/actions > /dev/null 2>&1
cp ./open_with_citrus.desktop /home/citrus/.local/share/file-manager/actions/ 
cp ./citrus.svg /home/citrus/.local/share/file-manager/actions/

# restart caja
pkill caja

echo '[+]Done.'

