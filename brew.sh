#!/usr/bin/env bash

# Install command-line tools using Homebrew.

# Ask for the administrator password upfront.
#sudo -v

# Keep-alive: update existing `sudo` time stamp until the script has finished.
#while true; do sudo -n true; sleep 60; kill -0 "$$" || exit; done 2>/dev/null &

# Make sure we’re using the latest Homebrew.
brew update

# Upgrade any already-installed formulae.
brew upgrade --all

# GNU core utilities (those that come with OS X are outdated).
# Don’t forget to add `$(brew --prefix coreutils)/libexec/gnubin` to `$PATH`.
brew install coreutils

# other useful utilities like `sponge`.
brew install moreutils
# GNU `find`, `locate`, `updatedb` and `xargs`. With g prefix
brew install findutils

# Install GNU tools, overwriting the built-in
brew install gnu-sed --with-default-names
brew install gnu-tar --with-default-names

# Bash
# add `/usr/local/bin/bash` to `/etc/shells` before running `chsh`.
brew install bash
brew install bash-completion
# Add the following lines to your ~/.bash_profile:
#  if [ -f $(brew --prefix)/etc/bash_completion ]; then
#    . $(brew --prefix)/etc/bash_completion
#  fi
# Homebrew's own bash completion script has been installed to /usr/local/etc/bash_completion.d


# openssl
brew install openssl
ln -s /usr/local/opt/openssl/bin/openssl /usr/local/bin/openssl
# Put trusted CA files (.pem) to /usr/local/etc/openssl/certs
# and run /usr/local/opt/openssl/bin/c_rehash

# more recent versions of some OS X tools.
brew install vim --override-system-vi
brew install homebrew/dupes/grep
brew install homebrew/dupes/awk
#brew install homebrew/dupes/libpcap
#brew install homebrew/dupes/tcpdump

# CTF tools; https://github.com/ctfs/write-ups.
#brew install aircrack-ng
#brew install hydra
#brew install john
brew install nmap
#brew install socat
#brew install sqlmap
brew install tcpflow
brew install tcpreplay
brew install tcptrace
brew install tcptraceroute
brew install mtr
brew install ipcalc

# other useful binaries.
brew install wget --with-iri
#brew install ack
#brew install exiv2
brew install git
brew install lynx
brew install pv
brew install tree
brew install tmux

# Remove outdated versions from the cellar.
brew cleanup

