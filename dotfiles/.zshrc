# Path to your oh-my-zsh configuration.
ZSH=$HOME/.oh-my-zsh

# Set name of the theme to load.
# Look in ~/.oh-my-zsh/themes/
# Optionally, if you set this to "random", it'll load a random theme each
# time that oh-my-zsh is loaded.
#ZSH_THEME="robbyrussell"
ZSH_THEME="af-magic"

# ALIASES
. ~/.aliases

# Set to this to use case-sensitive completion
# CASE_SENSITIVE="true"

# Comment this out to disable weekly auto-update checks
# DISABLE_AUTO_UPDATE="true"

# Uncomment following line if you want to disable colors in ls
# DISABLE_LS_COLORS="true"

# Uncomment following line if you want to disable autosetting terminal title.
# DISABLE_AUTO_TITLE="true"

# Uncomment following line if you want red dots to be displayed while waiting for completion
COMPLETION_WAITING_DOTS="true"

# Which plugins would you like to load? (plugins can be found in ~/.oh-my-zsh/plugins/*)
# Custom plugins may be added to ~/.oh-my-zsh/custom/plugins/
# Example format: plugins=(rails git textmate ruby lighthouse)
plugins=(git extract svn osx ant macports docker node npm)

source $ZSH/oh-my-zsh.sh

# Directory Jumping!
# init z   https://github.com/rupa/z
#. ~/z.sh

# Update Mac Mission control animation to be snappy
defaults write com.apple.dock expose-animation-duration -float 0.15;

# Restart Dock / Mission Control
killall Dock;

### $PATH ###
# Customize to your needs...
export PATH=/usr/bin:/bin:/usr/sbin:/sbin:/opt/X11/bin

# Node
# brew
export PATH=$PATH:/usr/local/bin

# Git
export PATH=$PATH:/usr/local/git/bin/

# MySQL
export PATH=$PATH:/usr/local/mysql/bin

# Go Lang
export PATH=$PATH:/usr/local/go/bin

# Grunt
export PATH=$PATH:/usr/local/bin/grunt

# Google Cloud SDK.
#export PATH=$PATH:/Users/andrew/google-cloud-sdk/bin

# Node Express
export PATH=$PATH:./node_modules/.bin

# Node Version Manager
# export NVM_DIR="/Users/andrew/.nvm"
# [ -s "$NVM_DIR/nvm.sh" ] && . "$NVM_DIR/nvm.sh"  # This loads nvm
. ~/.nvm/nvm.sh

# Docker
#export DOCKER_CERT_PATH=/Users/andrew/.boot2docker/certs/boot2docker-vm
export DOCKER_CERT_PATH=/Users/amaxwell/.boot2docker/certs/boot2docker-vm
export DOCKER_HOST=tcp://192.168.59.103:2376
export DOCKER_TLS_VERIFY=1


# Ruby Version Manager for GoPro
# Add RVM to PATH for scripting
export PATH="$PATH:$HOME/.rvm/bin"

# Required to get RVM to be found with ZSH
source $HOME/.rvm/scripts/rvm