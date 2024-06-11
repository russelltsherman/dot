# NixOS

[nixos](https://nixos.org)
[zero to nix](https://zero-to-nix.com/)
[Nix Package Search](https://search.nixos.org/packages)
[NixHub](https://nixhub.io)
[Example Configs](https://nixos.wiki/wiki/Configuration_Collection)
https://github.com/Misterio77/nix-colors
[nix tutorial](https://nix-tutorial.gitlabpages.inria.fr/nix-tutorial/index.html)


nix could manage our config files either by copying files from this repo to the user environment or by building them. this might be ideal for a new system setup for a shared team where you want to set the env to a known base then allow the user to customize as they wish.  the caveat being that user changes would be lost if this setup was reapplied

i think i prefer having config files symlinked so that changes are more apparent and easier to propagate to other workstations

## home manager
https://nixos.wiki/wiki/Home_Manager
https://nix-community.github.io/home-manager/
https://github.com/nix-community/home-manager#words-of-warning

## nix-darwin
https://github.com/LnL7/nix-darwin

## tutorials

https://www.youtube.com/watch?v=1dzgVkgQ5mE
https://github.com/schickling/dotfiles
a walkthrough (2 years old)

https://dev.to/synecdokey/nix-on-macos-2oj3 (Sep, 2023)

https://davi.sh/til/nix/nix-macos-setup/ (Nov, 2023)
https://github.com/synecdokey/dotfiles/

NixOS beginner guide - Vimjoyer
https://www.youtube.com/watch?v=bjTxiFLSNFA&list=PLko9chwSoP-15ZtZxu64k_CuTzXrFpxPE
