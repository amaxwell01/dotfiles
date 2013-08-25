#/bin/bash

cd "$(dirname "$0")"

input_value_one="${1}"
input_value_two="${2}"

# Check to see if Git is installed, if not, install it
checkGit() {
    if [ $(which git) ]
    then
        git --version
    else
        if [ uname == 'Linux' ]
        then
            apt-get install git
        else
            curl -O https://git-osx-installer.googlecode.com/files/git-1.8.3.2-intel-universal-snow-leopard.dmg
        fi
    fi

    current_os=uname

    if [ "$current_os" -eq "Linux" ]
    then
        echo "This this is Linux"
    else
        echo "this is not linux"
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

# Initialize
init() {
    case $input_value_one in 'vhost')
        echo "What do you want your host address to be?"
        read host_address
        echo "Where are your files located?"
        read host_directory
        echo "Do you want to enable this site? [yes or no]"
        read host_enabled
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

echo Check to see if Git is installed
checkGit


echo Setup my dot files
echo cURL my dot files
#curl -L https://github.com/amaxwell01/dotfiles/archive/master.zip > master.zip

echo Extract my zip file
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
