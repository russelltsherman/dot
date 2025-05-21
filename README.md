# dotfiles

provisioning for workstations

## Quick Start

On a fresh mac you won't have git or other required dependencies installed..
open a Terminal and run...

```sh
curl -fsSL https://raw.githubusercontent.com/russelltsherman/dot/main/bin/bootstrap | bash
```

## Usage

the slower start

1. `git clone https://github.com/russelltsherman/dot` to pull down the repository
1. `make bootstrap` to initialize workstation apps and settings

this script does the following

- install XCode Command Line Tools
- create a git clone of this repo in your ~/src/github/russelltsherman/dot directory

## Adblocking Hosts file

Use this file to prevent your computer from connecting to selected internet hosts.
This is an easy and effective way to protect you from many types of spyware,
reduces bandwidth use, blocks certain pop-up traps, prevents user tracking by
way of "web bugs" embedded in spam, provides partial protection to IE from certain
web-based exploits and blocks most advertising you would otherwise be subjected
to on the internet.

```sh
make -B /etc/hosts
```

## Nix

tend to need to uninstall and reintall nix after macos updates
use determinate systems installer
