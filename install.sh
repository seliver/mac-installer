/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install.sh)"
brew install zsh zsh-completions
sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"
brew install wget
brew install vim
brew install node
brew install git
brew install cask
brew install php@7.3
brew link --force --overwrite php@7.3
pecl install xdebug
cat > /usr/local/etc/php/7.3/conf.d/ext-xdebug.ini <<EOF
[xdebug]
xdebug.remote_autostart=1
xdebug.remote_port=9001
xdebug.remote_host=127.0.0.1
xdebug.remote_connect_back=1
xdebug.remote_enable=1
xdebug.idekey=PHPSTORM
EOF
echo "zend_extension=\"xdebug.so\"" >> /usr/local/etc/php/7.3/php.ini
brew install composer
brew cask install virtualbox
brew cask install postman
brew cask install vagrant
brew cask install google-chrome
brew cask install phpstorm
brew cask install iterm2
brew cask install rocket-chat
brew cask install microsoft-teams
brew cask install macpass
brew cask install helium
brew cask install spotify
brew cask install flux
brew cask install firefox
brew cask install sublime-text
brew cask install onedrive
brew cask install skitch
brew cask cleanup
brew cleanup
brew doctor
defaults write com.apple.finder AppleShowAllFiles TRUE
killall Finder

mkdir -p ~/.vim/autoload ~/.vim/bundle && \
curl -LSso ~/.vim/autoload/pathogen.vim https://tpo.pe/pathogen.vim
cd ~/.vim/bundle
git clone https://github.com/tpope/vim-sensible.git
git clone https://github.com/tpope/vim-fugitive.git
git clone --depth=1 https://github.com/vim-syntastic/syntastic.git

ln -s ~/OneDrive/.aws ~/.aws
ln -s ~/OneDrive/.ssh ~/.ssh
ln -s ~/OneDrive/.vimrc ~/.vimrc
rm ~/.zshrc && ln -s ~/OneDrive/.zshrc ~/.zshrc
rm ~/.zshrc_history && ln -s ~/OneDrive/.zshrc_history ~/.zshrc_history
