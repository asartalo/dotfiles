# dotfiles

Just dotfiles

## Installation
- Install NerdFont fonts under fonts folder
- Run `install.sh`

If you need to update your nix config, run:

```sh
nix run . switch -- --flake .
```

## Upgrading Nix Packages

Remove/rename the `flake.lock` file and run `nix run . switch -- --flake .`
again.
