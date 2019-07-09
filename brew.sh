#!/usr/bin/env bash

# Install command-line tools using Homebrew.

# Make sure we’re using the latest Homebrew.
brew update

# Upgrade any already-installed formulae.
brew upgrade

# Add cask so brew can install applications
brew cask

# Save Homebrew’s installed location.
BREW_PREFIX=$(brew --prefix)

# Install GNU core utilities (those that come with macOS are outdated).
# Don’t forget to add `$(brew --prefix coreutils)/libexec/gnubin` to `$PATH`.
brew install coreutils
ln -s "${BREW_PREFIX}/bin/gsha256sum" "${BREW_PREFIX}/bin/sha256sum"

# Install some other useful utilities like `sponge`.
brew install moreutils
# Install GNU `find`, `locate`, `updatedb`, and `xargs`, `g`-prefixed.
brew install findutils
# Install GNU `sed`, overwriting the built-in `sed`.
brew install gnu-sed
# Install Bash 4.
brew install bash
brew install bash-completion2

# Switch to using brew-installed bash as default shell
if ! fgrep -q "${BREW_PREFIX}/bin/bash" /etc/shells; then
  echo "${BREW_PREFIX}/bin/bash" | sudo tee -a /etc/shells;
  chsh -s "${BREW_PREFIX}/bin/bash";
fi;

# Install `wget` with IRI support.
brew install wget

# Install GnuPG to enable PGP-signing commits.
brew install gnupg

# Install more recent versions of some macOS tools.
brew install vim
brew install grep
brew install openssh
brew install screen

# Install other useful binaries.
brew install ack
#brew install exiv2
brew install git
brew install git-lfs
#brew install imagemagick --with-webp
brew install lua
brew install lynx
brew install p7zip
brew install pigz
brew install pv
brew install rename
brew install rlwrap
brew install ssh-copy-id
brew install telnet
brew install tree
brew install vbindiff
brew install zopfli
brew install readline
brew install xz

# Other dev tools
brew install node
brew install yarn
brew install nvm
brew install direnv
# not sure we need python yet
# brew install python@2
# brew install pyenv
# brew install pipenv
brew install watchman

# DVD ripping
# can't do illegal things at work
# brew install libdvdcss

# Others???


# APPLICATIONS

# essentials
brew cask install karabiner-elements
# brew cask install google-chrome
brew cask install dropbox
brew cask install google-backup-and-sync
# no need since we have full office
# brew cask install openoffice
brew cask install adobe-acrobat-reader
# APP STORE install magnet

# personal
# its a work computer not a personal computer
# brew cask install spotify
# brew cask install handbrake
# brew cask install transmission
# brew cask install vlc
# brew cask install kindle
# brew cask install the-unarchiver
# brew cask install chrome-remote-desktop-host

# dev: general
# already installed
# brew cask install slack
brew cask install visual-studio-code
#brew cask install atom
brew cask install hyper
brew cask install sourcetree
brew cask install balenaetcher

# dev: apps
# APP STORE install xcode
# probably not doing any mobile development
# brew cask install android-studio
# brew cask install genymotion

# dev: server
brew cask install graphql-playground
brew cask install docker
# hopefully I won't need this
# brew cask install java

# work
# not needed at CMM
# brew cask install harvest
# brew cask install tunnelblick
# brew cask install virtualbox
# brew cask install perforce
# brew cask install p4v
# brew cask install zoomus
# brew cask install skype
# brew cask install skype meetings app
# brew cask install mimecast
# brew cask install mailraider pro
# brew cask install vmware-horizon-client
# brew cask install manageengine-mibbrowser
brew cask install wireshark
brew cask install postman

# Remove outdated versions from the cellar.
brew cleanup

# YARN GLOBALS

# dev
yarn global add hyperlayout

# PYTHON MODLES

# dev
# not sure we need python yet testing
# pip2 install --upgrade pip
# pip2 install --upgrade setuptools
# pip2 install pylint
#curl -sSL https://raw.githubusercontent.com/sdispater/poetry/master/get-poetry.py | python
#poetry completions bash > $(brew --prefix)/etc/bash_completion.d/poetry.bash-completion


