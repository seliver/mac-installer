/usr/bin/ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"
brew install zsh zsh-completions
sh -c "$(curl -fsSL https://raw.githubusercontent.com/robbyrussell/oh-my-zsh/master/tools/install.sh)"
brew install wget
brew install vim
brew install rpl
brew install node
brew install svn
brew install git
brew install dnsmasq
brew install cask
brew cask install virtualbox
brew cask install rest
brew cask install vagrant
brew cask install google-chrome
brew cask install phpstorm
brew cask install iterm2
brew cask install slack
brew cask install sequel-pro
brew cask install macpass
brew cask install android-studio
brew cask install torbrowser
brew cask install qbittorrent
brew cask install spotify
brew cask install flux
brew cask install evernote
brew cask install sitesucker
brew cask install firefox
brew cask install sublime-text
brew cask install google-drive
brew cask install skitch
brew cask install spectacle
brew cask install logitech-control-center
brew cask install xquartz
brew cask install android-platform-tools
brew cask install heroku
npm install -g imgcat-cli npm-check gulp-cli
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
