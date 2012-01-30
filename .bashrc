[[ -s "~/.rvm/scripts/rvm" ]] && source "~/.rvm/scripts/rvm"

# python
export PATH=/usr/local/homebrew/share/python:$PATH
export WORKON_HOME=$HOME/.virtualenvs
if [ -f /usr/local/homebrew/share/python/virtualenvwrapper.sh ]; then
	source /usr/local/homebrew/share/python/virtualenvwrapper.sh
fi

export PATH=$PATH:~/bin
