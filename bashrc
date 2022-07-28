export LC_ALL=en_US.UTF-8

# PATH changes
export PATH=~/.bin:/opt/homebrew/Caskroom/google-cloud-sdk/latest/google-cloud-sdk/bin:$PATH
# EDITOR: vim
export EDITOR=/usr/bin/vim
export HOMEBREW_EDITOR=`/usr/bin/which subl`

#export GOROOT=`brew --prefix go`/libexec
export GOROOT=/home/linuxbrew/.linuxbrew/opt/go/libexec

GPG_TTY=$(tty)
export GPG_TTY

if [ -f ~/.bashrc_local ]; then
	source ~/.bashrc_local
fi

NODE_PATH=$NODE_PATH:/usr/local/lib/node_modules

PROMPT='%{$fg_bold[blue]%}%2~%{$reset_color%} $(my_git_prompt_info)%{$reset_color%}%B»%b '

alias k="kubectl"
alias kd="kubectl --context=helio-dev"

# added by travis gem
[ -f /Users/michael/.travis/travis.sh ] && source /Users/michael/.travis/travis.sh

export NODE_VERSIONS=$HOME/.nvm/versions/node
export NODE_VERSION_PREFIX=node-v

export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion
