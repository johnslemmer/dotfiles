#!/usr/bin/env bash

# Ask for the administrator password upfront
sudo -v

# Keep-alive: update existing `sudo` time stamp until `setup.sh` has finished
while true; do sudo -n true; sleep 60; kill -0 "$$" || exit; done 2>/dev/null &

# TODO(JS) run apt.sh
# TODO(JS) setup resolve.conf
# TODO(JS) setup /etc/exports
# TODO(JS) setup /etc/fstab

echo "Done. Note that some of these changes require a logout/restart to take effect."
