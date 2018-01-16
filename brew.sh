#!/usr/bin/env bash

# Install command-line tools using Homebrew.

# Make sure we’re using the latest Homebrew.
brew update

# Upgrade any already-installed formulae.
brew upgrade

# Add cask so brew can install applications
brew tap caskroom/cask

# Install GNU core utilities (those that come with macOS are outdated).
# Don’t forget to add `$(brew --prefix coreutils)/libexec/gnubin` to `$PATH`.
brew install coreutils

# Install some other useful utilities like `sponge`.
brew install moreutils
# Install GNU `find`, `locate`, `updatedb`, and `xargs`, `g`-prefixed.
brew install findutils
# Install GNU `sed`, overwriting the built-in `sed`.
brew install gnu-sed --with-default-names
# Install Bash 4.
# Note: don’t forget to add `/usr/local/bin/bash` to `/etc/shells` before
# running `chsh`.
brew install bash
brew install bash-completion2

# Switch to using brew-installed bash as default shell
if ! fgrep -q '/usr/local/bin/bash' /etc/shells; then
  echo '/usr/local/bin/bash' | sudo tee -a /etc/shells;
  chsh -s /usr/local/bin/bash;
fi;

# Install `wget` with IRI support.
brew install wget --with-iri

# Install GnuPG to enable PGP-signing commits.
brew install gnupg

# Install more recent versions of some macOS tools.
brew install vim --with-override-system-vi
brew install grep
brew install openssh
brew install screen

# Install other useful binaries.
brew install ack
#brew install exiv2
brew install git
brew install git-lfs
brew install imagemagick --with-webp
brew install lua
brew install lynx
brew install p7zip
brew install pigz
brew install pv
brew install rename
brew install rlwrap
brew install ssh-copy-id
brew install tree
brew install vbindiff
brew install zopfli

# Other dev tools
brew install node
brew install direnv
brew install pyenv
brew install pipenv
brew install watchman

# DVD ripping
brew install libdvdcss

# Others???


# APPLICATIONS

# essentials
brew cask install karabiner-elements
brew cask install google-chrome
brew cask install dropbox
brew cask install google-backup-and-sync
brew cask install openoffice
brew cask install adobe-acrobat-reader

# personal
# brew cask install spotify
brew cask install handbrake
brew cask install transmission
brew cask install vlc
brew cask install kindle
brew cask install the-unarchiver
brew cask install chrome-remote-desktop-host

# dev: general
brew cask install visual-studio-code
brew cask install atom
brew cask install hyper
brew cask install sourcetree

# dev: apps
# brew cask install xcode
brew cask install expo-xde
brew cask install android-studio
brew cask install genymotion

# dev: server
brew cask install graphql-playground
brew cask install docker
brew cask install java

# work
brew cask install harvest
brew cask install tunnelblick
brew cask install virtualbox
brew cask install perforce
brew cask install p4v
brew cask install p4merge
# brew cask install p4admin
brew cask install zooomus
brew cask install skype
# brew cask install skype meetings app
# brew cask install mimecast
# brew cask install mailraider pro
brew cask install vmware-horizon-client
brew cask install manageengine-mibbrowser

# Remove outdated versions from the cellar.
brew cleanup
