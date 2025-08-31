
current_dir = $(shell pwd)
BINSCRIPT_NAMES := $(subst ./bin/, , $(shell find ./bin -maxdepth 1 -type f \( ! -iname "bootstrap" \) \( ! -iname "uninstall" \)))
CONFIG_DIRS := $(subst ./config/, , $(shell find ./config -maxdepth 1 -type d \( ! -iname "config" \)))
CONFIG_NAMES := $(subst ./config/, , $(shell find ./config -maxdepth 1 -type f))
DOTFILE_NAMES := $(subst ./dotfiles/, , $(shell find ./dotfiles -maxdepth 1 -name ".*"))
LIBFILE_NAMES := $(subst ./lib/, , $(shell find ./lib -maxdepth 1 -name "*.sh"))
XDG_CONFIG_HOME = $$HOME/.config

## initialize project
bootstrap:
	make binlink
	make configlink
	make dotlink
	make liblink
	make gitconfig
.PHONY: bootstrap

## clean symlinks from user bin directory
binclean: 
	@for file in $(BINSCRIPT_NAMES) ; do if [ -L ~/bin/$${file} ];then rm ~/bin/$${file}; fi; done
.PHONY: binclean

binlink: ~/bin binclean
	@for file in $(BINSCRIPT_NAMES) ; do ln -sv $(current_dir)/bin/$${file} ~/bin/$${file}; done
.PHONY: binlink

configclean:
	@for file in $(CONFIG_DIRS) ; do if [ -L $(XDG_CONFIG_HOME)/$${file} ];then rm $(XDG_CONFIG_HOME)/$${file}; fi; done
	@for file in $(CONFIG_NAMES) ; do if [ -L $(XDG_CONFIG_HOME)/$${file} ];then rm $(XDG_CONFIG_HOME)/$${file}; fi; done
.PHONY: configclean

configlink: ~/.config configclean
	@for file in $(CONFIG_DIRS) ; do ln -sv $(current_dir)/config/$${file}/ $(XDG_CONFIG_HOME); done
	@for file in $(CONFIG_NAMES) ; do ln -sv $(current_dir)/config/$${file} $(XDG_CONFIG_HOME)/$${file}; done
.PHONY: configlink

dotclean: # if there are existing symlinks for our dotfiles in ~/ remove them
	@for file in $(DOTFILE_NAMES) ; do if [ -L ~/$${file} ];then rm ~/$${file}; fi; done
.PHONY: dotclean

dotlink: dotclean
	@for file in $(DOTFILE_NAMES) ; do ln -sv $(current_dir)/dotfiles/$${file} ~/$${file}; done
.PHONY: dotlink

libclean: # if there are existing symlinks for our dotfiles in ~/ remove them
	@for file in $(LIBFILE_NAMES) ; do if [ -L ~/lib/$${file} ];then rm ~/lib/$${file}; fi; done
.PHONY: libclean

## symlink lib files into user directory
liblink: ~/lib libclean
	# @for file in $(LIBFILE_NAMES) ; do ln -sv $(current_dir)/lib/$${file} ~/lib/$${file}; done
.PHONY: liblink

## include our supplemental global gitconfig into users global gitconfig
gitconfig:
	# dotfiles target linked our global gitconfig and gitignore 
	# here we set git config to reference these files
	git config --global core.excludesfile $(XDG_CONFIG_HOME)/git/ignore
	git config --global include.path $(XDG_CONFIG_HOME)/git/.gitconfig_global
.PHONY: gitconfig

## configure sudo to not require password
sudo/noprompt:
	echo "$(shell whoami) ALL=(ALL) NOPASSWD:ALL" | sudo tee /etc/sudoers.d/$(shell whoami)
.PHONY: sudo/noprompt

## configure sudo to require password
sudo/prompt:
	[ "$(shell whoami)" != "vagrant" ] && sudo rm -rf /etc/sudoers.d/$(shell whoami)
.PHONY: sudo/prompt

## pull upstream changes
update:
	git pull
	make bootstrap
.PHONY: update

## implement adblocking hosts file from someonewhocares
/etc/hosts:
	sudo wget -O /etc/hosts https://someonewhocares.org/hosts/hosts
.PHONY: /etc/hosts

## ensure bin directory exists
~/bin:
	mkdir -p ~/bin

## ensure lib directory exists
~/lib:
	mkdir -p ~/lib

## ensure the .config directory exists
~/.config:
	mkdir -p ~/.config

flake:
	# nix run github:nix-community/home-manager -- switch --flake .\#$(shell hostname) -b backup --show-trace
	nix run nix-darwin --extra-experimental-features nix-command --extra-experimental-features flakes -- switch --flake .\#$(shell hostname)
.PHONY: flake
