# PATH changes
export PATH=~/bin/erlbrew.d:~/.exenv/bin:/usr/local/homebrew/bin:/usr/local/homebrew/sbin:/usr/bin:/bin:/usr/sbin:/sbin:$PATH
# python
export WORKON_HOME=$HOME/.virtualenvs
export EDITOR=/usr/bin/vim

if [ -f /usr/local/bin/virtualenvwrapper_lazy.sh ]; then
	source /usr/local/bin/virtualenvwrapper_lazy.sh
fi
if [ -f /usr/local/homebrew/bin/virtualenvwrapper_lazy.sh ]; then
	source /usr/local/homebrew/bin/virtualenvwrapper_lazy.sh
fi
export PIP_REQUIRE_VIRTUALENV=true

export PATH=$PATH:~/.bin

if [ -f ~/.bashrc_local ]; then
	source ~/.bashrc_local
fi

PATH=$PATH:/usr/local/homebrew/bin #npm
NODE_PATH=$NODE_PATH:/usr/local/homebrew/lib/node_modules

PROMPT='%{$fg_bold[blue]%}%2~%{$reset_color%} $(my_git_prompt_info)%{$reset_color%}%B»%b '

export HOMEBREW_EDITOR=`/usr/bin/which subl`

PATH="$HOME/.erlenv/bin:$PATH"
if which erlenv > /dev/null; then eval "$(erlenv init -)"; fi

if which exenv > /dev/null; then eval "$(exenv init -)"; fi
if which rbenv > /dev/null; then eval "$(rbenv init -)"; fi

export PATH="$PATH:$HOME/.rvm/bin" # Add RVM to PATH for scripting

# added by travis gem
[ -f /Users/michael/.travis/travis.sh ] && source /Users/michael/.travis/travis.sh

# PHP
export PATH=/usr/local/php5/bin:$PATH

# Remove local branches
alias git-rm-local-branches='git remote prune origin && git branch -d $(git branch --merged)'
