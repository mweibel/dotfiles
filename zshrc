# Path to your oh-my-zsh configuration.
ZSH=$HOME/.oh-my-zsh

# Set name of the theme to load.
# Look in ~/.oh-my-zsh/themes/
# Optionally, if you set this to "random", it'll load a random theme each
# time that oh-my-zsh is loaded.
ZSH_THEME="lukerandall"

# Set to this to use case-sensitive completion
CASE_SENSITIVE="true"

# Comment this out to disable weekly auto-update checks
DISABLE_AUTO_UPDATE="true"

# Uncomment following line if you want to disable colors in ls
# DISABLE_LS_COLORS="true"

# Uncomment following line if you want to disable autosetting terminal title.
# DISABLE_AUTO_TITLE="true"

# Don't keep duplicate entries (same command twice in a row) in history file
setopt histignoredups
#
# # Allow comments in interactive sessions, a great way to save a line for later
#setopt INTERACTIVE_COMMENTS

# Which plugins would you like to load? (plugins can be found in ~/.oh-my-zsh/plugins/*)
# Example format: plugins=(rails git textmate ruby lighthouse)
plugins=(git osx brew zsh-syntax-highlighting git-flow npm)

source $ZSH/oh-my-zsh.sh

# Customize to your needs...
export LSCOLORS='ExFxCxDxbxegedabagacad'

ZSH_HIGHLIGHT_STYLES[path]='fg=white,bold'

if [ -f ~/.bashrc ]; then
	source ~/.bashrc
fi

# git flow completion
if [ -f /usr/local/homebrew/share/zsh/site-functions/git-flow-completion.zsh ]; then
	source /usr/local/homebrew/share/zsh/site-functions/git-flow-completion.zsh
fi

### Added by the Heroku Toolbelt
export PATH="/usr/local/heroku/bin:$PATH"