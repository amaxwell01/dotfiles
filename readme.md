# Andrew's dotfiles.
* This repo is mostly for me but you're welcome to make suggestions.
* A script which connects to Github, clones the repo to the server or machine then updates the contents of that repo and maps it on the machine

<br>
<br>

# Installation:
1. Run the following:
```bash
git clone https://github.com/amaxwell01/dotfiles.git && cd dotfiles && node sync.js add force
```

Note: To update later, just run the sync again.

<br>
<br>

---

# Dotfile Sync Dependencies:
* Git
* Node

<br>

## Download Git:
http://git-scm.com/download/

<br>

## Node.js Option 1 - Volta:
* Setup Volta to use the latest version of Node.js
* [https://volta.sh/](Volta.sh)

```bash
# install Volta
curl https://get.volta.sh | bash

# install Node
volta install node

# start using Node
node
```
<br>

## Node Option 2 - NVM:
* Setup NVM to use the latest version of Node.js
* https://github.com/nvm-sh/nvm
```bash
# Install NVM
curl -o- https://raw.githubusercontent.com/creationix/nvm/v0.25.4/install.sh | bash;

# Use NVM to install Node
nvm install iojs-v2.3.3

# Use NVM to 
nvm use iojs-v2.3.3
nvm alias default iojs-v2.3.3
```
<br>

---

# Install required software:
* Git
* oh-my-zsh
* NVM
* Node
* node-debug
* vim
* gsutil
* gcloud

## Deprecated Software

* sass
* subl mapping
* docker
* grunt

## Themes:
[draculatheme](https://draculatheme.com) - Dark Theme for VS Code, VIM, ZSH, iTerm, Slack.

## private config

Toss it into a file called `.extra` which you do not commit to this repo and just keep in your `~/`

I do something nice with my `PATH` there:

```shell
# PATH like a bawss
      PATH=/opt/local/bin
PATH=$PATH:/opt/local/sbin
PATH=$PATH:/bin
PATH=$PATH:~/.rvm/bin
PATH=$PATH:~/code/git-friendly
# ...

export PATH
```

# Download Software
```bash
curl -O http://downloads.puppetlabs.com/mac/puppet-latest.dmg
wget http://downloads.puppetlabs.com/mac/puppet-latest.dmg
```

## Syntax highlighting
…is really important. even for these files.

Install [Dotfiles Syntax Highlighting](https://github.com/mattbanks/dotfiles-syntax-highlighting-st2) via [Sublime Text 2 Package Control](http://wbond.net/sublime_packages/package_control)


### Sensible OS X defaults
* When setting up a new Mac, you may want to set some sensible OS X defaults:

```bash
./.osx
```

---

## overview of files
####  Automatic config
* `.vimrc`, `.vim` - vim config, obv.

#### shell environement
* `.aliases`
* `.bash_profile`
* `.bash_prompt`
* `.bashrc`
* `.exports`
* `.functions`
* `.extra` - not included, explained above

#### manual run
* `install-deps.sh` - random apps i need installed
* `.osx` - run on a fresh osx machine
* `.brew` - homebrew intialization

#### git, brah
* `.git`
* `.gitattributes`
* `.gitconfig`
* `.gitignore`

* `.inputrc` - config for bash readline

# Aliases (.aliases)
```bash
alias chef='/var/chef-solo/scripts/run_chef.sh -o -v'
```
<br>

# ZSH:
## Set variables in zsh
```
CONFIG=~/.bashrc
```

## Restart zsh
```bash
source ~/.zshrc
```

<br>

# BASH:
## Set variables in bash
```
CONFIG=~/.bashrc
```

## Restart bash
```bash
source ~/.bashrc
```


### Originally inspired by:
[mathias's readme](https://github.com/mathiasbynens/dotfiles/) is awesome. go read it.

## Similar projects

I recommend getting a [`.jshintrc`](https://github.com/jshint/node-jshint/blob/master/.jshintrc) and [`.editorconfig`](http://editorconfig.org/) defined for all your projects.
