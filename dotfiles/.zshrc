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

# Exports
. ~/.exports

# Functions
. ~/.functions

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
plugins=(git z extract macos macports docker node npm)

source $ZSH/oh-my-zsh.sh

# Directory Jumping!
# init z   https://github.com/rupa/z
#. ~/z.sh

# Update Mac Mission control animation to be snappy
# only run on a mac
if [[ "$OSTYPE" =~ ^darwin ]] then
  # Set Mission Control Animation Speeds
  defaults write com.apple.dock expose-animation-duration -float 0.15;

  # Restart Dock / Mission Control
  killall Dock;
fi

# Node Version Manager
# export NVM_DIR="/Users/andrew/.nvm"
# [ -s "$NVM_DIR/nvm.sh" ] && . "$NVM_DIR/nvm.sh"  # This loads nvm
# only run when nvm is installed
if [[ -s "$NVM_DIR/nvm.sh" ]] then
  # load nvm
  . ~/.nvm/nvm.sh
fi