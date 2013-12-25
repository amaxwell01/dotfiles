#/bin/bash

cd "$(dirname "$0")"

input_value_one="${1}"
input_value_two="${2}"
current_os=`uname`

# Check to see if Git is installed, if not, install it
checkGit() {
    if [ $(which git) ]
    then
        echo "You are using `git --version`"
    else
        if [ "$current_os" == "Linux" ]
        then
	    echo "Install git on Linux"
	    echo "========================================="
            apt-get install git
	elif [ "$current_os" == "Darwin" ]
	then
	    echo "========================================="
	    curl -O https://git-osx-installer.googlecode.com/files/git-1.8.3.2-i
ntel-universal-snow-leopard.dmg
        else
	    echo "========================================="
            echo "This is not Linux or a Mac"
	fi
    fi
}

newVhost() {
cat <<END >> $host_address
<VirtualHost *:80>
    ServerName $host_address
    DocumentRoot $host_directory

    <Directory $host_directory>
        Options Indexes FollowSymLinks MultiViews
        AllowOverride All
        Order allow,deny
        allow from all
    </Directory>

</VirtualHost>
END
}

checkJSHint() {
    npm install jshint -g
}

# Initialize
init() {
    case $input_value_one in 'vhost')
        echo "What do you want your host address to be?"
	echo "========================================="
        read host_address
	echo
	echo
        echo "Where are your files located?"
	echo "========================================="
        read host_directory
	echo
	echo
        echo "Do you want to enable this site? [yes or no]"
        echo "========================================="
	read host_enabled
	echo
	echo
        echo $host_enabled
        if [ "$host_enabled" -eq "yes" ]
        then
        open $host_address
        fi
        newVhost
        ;;
    esac
}

# Check the users input
init

echo "Check to see if Git is installed"
echo "=================================="
checkGit


echo "Setup my dot files"
echo "cURL my dot files"
echo "=================================="
#curl -L https://github.com/amaxwell01/dotfiles/archive/master.zip > master.zip

echo
echo
echo "Extract my zip file"
# unzip master.zip

echo Ensure that the files downloaded
# ls -la

echo Remove the zip file
# rm -rf master.zip

echo Show the list of files
# ls -la

echo Open the downloaded Files
# cd dotfiles-master

echo Show the list of files
# ls -la

echo move the vim files to my home directory
# mv .vim ~/.vim

#open ~/.vim
rm -rf ~/.vim

echo remove the dotfiles-master folder
# rm -rf ../dotfiles-master

echo Download Minecraft
#curl -L https://s3.amazonaws.com/Minecraft.Download/launcher/Minecraft.dmg > Minecraft.dmg

#open .

echo Install Minecraft
#open Minecraft.dmg

echo "Please enter the site name"
#read input_site_name

#vim $input_site_name
