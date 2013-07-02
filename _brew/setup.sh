#!/usr/bin/env bash

# Make sure we’re using the latest Homebrew
brew update

# Upgrade any already-installed formulae
brew upgrade

# Install GNU core utilities (those that come with OS X are outdated)
brew install coreutils
echo "Don’t forget to add $(brew --prefix coreutils)/libexec/gnubin to \$PATH."
# Install GNU `find`, `locate`, `updatedb`, and `xargs`, g-prefixed
brew install findutils
# Install Bash 4
brew install bash

# Install wget with IRI support
brew install wget --enable-iri

# Install more recent versions of some OS X tools
brew tap homebrew/dupes
brew install homebrew/dupes/grep

# Install other useful binaries
brew install ack
brew install aria2
brew install aspell
brew install autoconf
brew install automake
brew install bbcolors
brew install beanstalk
brew install boost
brew install cloc
brew install cmake
brew install contacts
brew install curl-ca-bundle
brew install ec2-ami-tools
brew install ec2-api-tools
brew install fop
brew install freetype
brew install gdbm
brew install gettext
brew install ghostscript
brew install git
brew install git-extras
brew install git-flow
brew install git-utils
brew install gmp
brew install gnupg
brew install gnutls
brew install go
brew install graphicsmagick
brew install growly
brew install htop-osx
brew install imagemagick
brew install jpeg
brew install libevent
brew install libmagic
brew install libspotify
brew install libtasn1
brew install libtiff
brew install libtool
brew install libxml2
brew install libyaml
brew install lynx
brew install mcrypt
brew install md5sha1sum
brew install memcached
brew install memcache-top
brew install mercurial
brew install mg
brew install mongodb
brew install multitail
brew install mysql
brew install nettle
brew install nginx
brew install node
brew install openssl
brew install p11-kit
brew install parallel
brew install pcre
brew install pidof
brew install pigz
brew install pkg-config
brew install readline
brew install rename
brew install resty
brew install saxon
brew install sloccount
brew install sqlite
brew install stow
brew install stunnel
brew install thrift
brew install tig
brew install tmux
brew install tree
brew install unrar
brew install watch
brew install wget
brew install xmlsh
brew install xmlstarlet
brew install xz
brew install zeromq

brew tap josegonzalez/homebrew-php
brew install php54

brew tap homebrew/versions
brew install lua52

# Install native apps
brew tap phinze/homebrew-cask
brew install brew-cask

function installcask() {
	if brew cask info "${@}" | grep "Not installed" > /dev/null; then
		brew cask install "${@}"
	else
		echo "${@} is already installed."
	fi
}

installcask adium
installcask alfred
installcask bartender
installcask caffeine
installcask calibre
installcask coconutbattery
installcask cornerstone
installcask cyberduck
installcask daisy-disk
installcask dropbox
installcask google-chrome
installcask google-chrome-canary
installcask handbrake
installcask handbrakebatch
installcask imagealpha
installcask imageoptim
installcask istat-menus
installcask iterm2
installcask libre-office
installcask miro-video-converter
installcask renamer
installcask ripit
installcask satellite-eyes
installcask shortcat
installcask spotify
installcask sublime-text
installcask textual
installcask the-unarchiver
installcask tomahawk
installcask transmission
installcask virtualbox
installcask vlc

# Remove outdated versions from the cellar
brew cleanup
