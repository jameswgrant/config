# dotfiles

This repository uses GNU Stow with a **per-package layout**.

## Packages
- `hypr`
- `waybar`
- `walker`
- `ghostty`
- `zsh`
- `git`
- `ssh`
- `bin`

## Usage
From this repository root:

```bash
stow -t "$HOME" hypr zsh git ssh waybar walker ghostty bin
```

Dry-run first:

```bash
stow -n -v -t "$HOME" hypr zsh git ssh waybar walker ghostty bin
```

## Safety
- Never commit secrets, private keys, tokens, or machine-specific credentials.
- Use templates in this repo and keep sensitive values in local, untracked files.

## Aliases
`git/.gitconfig` includes smart aliases such as:
- `git co`, `git st`, `git pl`, `git ps`
- `git cm`, `git cma`, `git unstage`, `git last`, `git lg`

`zsh/.zshrc` includes convenience aliases such as:
- navigation/listing: `l`, `la`, `ll`, `..`, `...`
- git shortcuts: `g`, `gs`, `ga`, `gc`, `gco`, `gl`, `gp`, `glg`

Put personal machine-specific overrides in `~/.zshrc.local`.
