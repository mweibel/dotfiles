export LC_ALL=en_US.UTF-8

# PATH changes
export PATH=~/.bin:/usr/local/homebrew/bin:/usr/local/homebrew/sbin:$PATH
# EDITOR: vim
export EDITOR=/usr/bin/vim
export HOMEBREW_EDITOR=`/usr/bin/which subl`

GPG_TTY=$(tty)
export GPG_TTY

if [ -f ~/.bashrc_local ]; then
	source ~/.bashrc_local
fi

NODE_PATH=$NODE_PATH:/usr/local/homebrew/lib/node_modules

PROMPT='%{$fg_bold[blue]%}%2~%{$reset_color%} $(my_git_prompt_info)%{$reset_color%}%B»%b '

# added by travis gem
[ -f /Users/michael/.travis/travis.sh ] && source /Users/michael/.travis/travis.sh
