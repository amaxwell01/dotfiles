#/bin/bash

cd "$(dirname "$0")"

# Check to see if Git is installed, if not, install it
function checkGit() {
    if [ $(which git) ]; then
	    git --version
	else
	    curl -O https://git-osx-installer.googlecode.com/files/git-1.8.3.2-intel-universal-snow-leopard.dmg
	fi
}

echo Check to see if Git is installed
checkGit

echo Setup my dot files
echo cURL my dot files
curl -L https://github.com/amaxwell01/dotfiles/archive/master.zip > master.zip

echo Extract my zip file
unzip master.zip

echo Ensure that the files downloaded
ls -la

echo Remove the zip file
rm -rf master.zip

echo Show the list of files
ls -la

echo Open the downloaded Files
cd dotfiles-master

echo Show the list of files
ls -la

echo move the vim files to my home directory
mv .vim ~/.vim

#open ~/.vim
rm -rf ~/.vim

echo remove the dotfiles-master folder
rm -rf ../dotfiles-master

echo Download Minecraft
#curl -L https://s3.amazonaws.com/Minecraft.Download/launcher/Minecraft.dmg > Minecraft.dmg

#open .

echo Install Minecraft
#open Minecraft.dmg

