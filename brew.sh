#!/usr/bin/env bash

# Install command-line tools using Homebrew.

# Make sure we’re using the latest Homebrew.
brew update

# Upgrade any already-installed formulae.
brew upgrade

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
# Install a modern version of Bash.
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
brew install curl
brew install git
brew install git-lfs
# brew install gs
# brew install imagemagick --with-webp
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
brew install jq

# Other dev tools
brew install asdf
brew install node
brew install yarn
brew install direnv
# not sure we need python yet
# brew install python@2
# brew install pyenv
# brew install pipenv
brew install watchman
brew install azure-cli
brew install postgres

# DVD ripping
# can't do illegal things at work
# brew install libdvdcss

# Others???


# APPLICATIONS

# essentials
# stop using karabiner in preference to hidutil
# brew install karabiner-elements
# brew install google-chrome
brew install dropbox
brew install google-backup-and-sync
# no need since we have full office
# brew install openoffice
brew install adobe-acrobat-reader
# APP STORE install magnet
brew install lastpass

# personal
# its a work computer not a personal computer
# brew install spotify
# brew install handbrake
# brew install transmission
brew install vlc
# brew install kindle
# brew install the-unarchiver
# brew install chrome-remote-desktop-host
brew install discord
brew install gimp
brew install steam

# dev: general
# already installed
# brew install slack
brew install visual-studio-code
#brew install atom
brew install hyper
brew install sourcetree
brew install balenaetcher
brew install clipy
brew install kap

# dev: apps
# APP STORE install xcode
# probably not doing any mobile development
# brew install android-studio
# brew install genymotion

# dev: server
brew install graphql-playground
brew install homebrew/cask/docker
# hopefully I won't need this
# brew install java

# work
# not needed at CMM
# brew install harvest
# brew install tunnelblick
# brew install virtualbox
# brew install perforce
# brew install p4v
# brew install zoomus
# brew install skype
# brew install skype meetings app
# brew install mimecast
# brew install mailraider pro
# brew install vmware-horizon-client
# brew install manageengine-mibbrowser
brew install homebrew/cask/wireshark
brew install postman
brew install azure-data-studio

# Remove outdated versions from the cellar.
brew cleanup

# ASDF SETUP
asdf plugin add ruby
asdf install ruby 2.4.6
asdf install ruby 2.6.0
asdf install ruby 2.6.6
asdf install ruby latest
asdf global ruby system
asdf plugin add nodejs
# needed for installing the nodejs plugin
bash -c '${ASDF_DATA_DIR:=$HOME/.asdf}/plugins/nodejs/bin/import-release-team-keyring'
asdf install nodejs 6.9.1
asdf global nodejs system

# YARN GLOBALS

# dev
yarn global add hyperlayout
yarn global add vercel
yarn global add blitz

# PYTHON MODLES

# dev
# not sure we need python yet testing
# pip2 install --upgrade pip
# pip2 install --upgrade setuptools
# pip2 install pylint
#curl -sSL https://raw.githubusercontent.com/sdispater/poetry/master/get-poetry.py | python
#poetry completions bash > $(brew --prefix)/etc/bash_completion.d/poetry.bash-completion


