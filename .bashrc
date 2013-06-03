# python
export PATH=/usr/local/homebrew/share/python:$PATH
export WORKON_HOME=$HOME/.virtualenvs
if [ -f /usr/local/homebrew/share/python/virtualenvwrapper.sh ]; then
	source /usr/local/homebrew/share/python/virtualenvwrapper.sh
fi

has_virtualenv() {
    if [ -e .venv ]; then
        workon `cat .venv`
	fi
}
venv_cd () {
    cd "$@" && has_virtualenv
}
alias cd="venv_cd"

export PATH=$PATH:~/bin

if [ -f ~/.bashrc_local ]; then
	source ~/.bashrc_local
fi

PATH=/usr/local/homebrew/Cellar/gettext/0.18.1.1/bin:$PATH #gettext 

PATH=/usr/local/homebrew/share/npm/bin:$PATH #npm

#PROMPT='%{$fg_bold[green]%}%n@%m%{$reset_color%} %{$fg_bold[blue]%}%2~%{$reset_color%} $(my_git_prompt_info)%{$reset_color%}%B»%b '
PROMPT='%{$fg_bold[blue]%}%2~%{$reset_color%} $(my_git_prompt_info)%{$reset_color%}%B»%b '

if which rbenv > /dev/null; then eval "$(rbenv init -)"; fi

if [ -f ~/.nvm/nvm.sh ]; then
	source ~/.nvm/nvm.sh
fi
