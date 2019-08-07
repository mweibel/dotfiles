#!/bin/bash
#
# personal OSX CLI setup script
#

echo "Starting"

# update gitmodules
git submodule update --init

# install homebrew
/usr/bin/ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"

# install dotfiles
for symlink in ackrc bashrc gitconfig gitignore slate vimrc zshrc merge-po-files vim direnvrc
do
	echo "Linking $symlink"
	rm ~/.$symlink
	ln -s $PWD/$symlink ~/.$symlink
done

rm ~/.gnupg/gpg.conf
ln -s $PWD/gpg.conf ~/.gnupg/gpg.conf

# install homebrew packages
echo "Installing packages"
brew bundle

# install oh-my-zsh
echo "Installing oh-my-zsh"
git clone git://github.com/robbyrussell/oh-my-zsh.git ~/.oh-my-zsh
echo "Setting zshell as default shell"
chsh -s /bin/zsh

# sublime text 3
echo "Installing sublime text 3 configs"
find $PWD/sublime-text3/* -depth 0 | while read FILE
do
	ln -s "$FILE" ~/Library/Application\ Support/Sublime\ Text\ 3/Packages/User
done

ln -s /Applications/Sublime\ Text.app/Contents/SharedSupport/bin/subl /usr/local/bin/subl

./macos

echo "Done installing"
