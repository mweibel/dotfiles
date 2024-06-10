#!/bin/bash
#
# personal OSX CLI setup script
#

echo "Starting"

# update gitmodules
git submodule update --init

# install homebrew
# /bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"

mkdir -p ~/.tmux/plugins
git clone https://github.com/tmux-plugins/tpm ~/.tmux/plugins/tpm

# install dotfiles
for symlink in bashrc gitconfig gitignore vimrc zshrc merge-po-files vim direnvrc alacritty.toml tmux.conf
do
	echo "Linking $symlink"
	rm ~/.$symlink
	ln -s $PWD/$symlink ~/.$symlink
done

# install homebrew packages
# echo "Installing packages"
# brew bundle

# compile diff-highlight
make -C $(brew --prefix git)/share/git-core/contrib/diff-highlight

# install oh-my-zsh
echo "Installing oh-my-zsh"
git clone git://github.com/robbyrussell/oh-my-zsh.git ~/.oh-my-zsh
echo "Setting zshell as default shell"
chsh -s /bin/zsh

# sublime text 3
# echo "Installing sublime text 3 configs"
# find $PWD/sublime-text3/* -depth 0 | while read FILE
# do
# 	ln -s "$FILE" ~/Library/Application\ Support/Sublime\ Text\ 3/Packages/User
# done

# ln -s /Applications/Sublime\ Text.app/Contents/SharedSupport/bin/subl /usr/local/bin/subl

# ./macos

echo "Done installing"
