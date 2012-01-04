# Path to your oh-my-zsh configuration.
ZSH=$HOME/.oh-my-zsh

# Set name of the theme to load.
# Look in ~/.oh-my-zsh/themes/
# Optionally, if you set this to "random", it'll load a random theme each
# time that oh-my-zsh is loaded.
#ZSH_THEME="geoffgarside"
ZSH_THEME="lukerandall"

# Set to this to use case-sensitive completion
CASE_SENSITIVE="true"

# Comment this out to disable weekly auto-update checks
DISABLE_AUTO_UPDATE="true"

# Uncomment following line if you want to disable colors in ls
# DISABLE_LS_COLORS="true"

# Uncomment following line if you want to disable autosetting terminal title.
# DISABLE_AUTO_TITLE="true"

# Which plugins would you like to load? (plugins can be found in ~/.oh-my-zsh/plugins/*)
# Example format: plugins=(rails git textmate ruby lighthouse)
plugins=(git osx ruby brew github rails3 gem rvm grails)

source $ZSH/oh-my-zsh.sh

# Customize to your needs...
export PATH=/usr/local/homebrew/bin:/usr/local/homebrew/sbin:/usr/bin:/bin:/usr/sbin:/sbin:/usr/X11/bin:/Applications/TextMate.app/Contents/Resources/
export YUI_COMPRESSOR=/usr/local/homebrew/Cellar/yuicompressor/2.4.6/libexec/yuicompressor-2.4.6.jar
export NATURALDOCS_DIR=/usr/local/homebrew/Cellar/naturaldocs/1.52/bin

export LSCOLORS='ExFxCxDxbxegedabagacad'

if [ -f ~/.bashrc ]; then
	source ~/.bashrc
fi
