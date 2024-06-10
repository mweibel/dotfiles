export LC_ALL=en_US.UTF-8

# PATH changes
# export PATH=${KREW_ROOT:-$HOME/.krew}/bin:~/.bin:/opt/homebrew/Caskroom/google-cloud-sdk/latest/google-cloud-sdk/bin:$PATH
# EDITOR: vim
export EDITOR=/usr/bin/vim

#export GOROOT=`brew --prefix go`/libexec
#export GOROOT=/home/linuxbrew/.linuxbrew/opt/go/libexec

GPG_TTY=$(tty)
export GPG_TTY

if [ -f ~/.bashrc_local ]; then
	source ~/.bashrc_local
fi

NODE_PATH=$NODE_PATH:/usr/local/lib/node_modules

export USE_GKE_GCLOUD_AUTH_PLUGIN=True
