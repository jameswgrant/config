# Dotfiles conventions

## Layout
Each top-level directory is a Stow package and contains files in their target-relative paths (for example `zsh/.zshrc` -> `~/.zshrc`).

## Adding a new app config
1. Create a package or reuse an existing package.
2. Mirror the target path inside the package.
3. Run `stow -n -v -t "$HOME" <package>` to preview changes.
4. Run `stow -v -t "$HOME" <package>` to apply symlinks.

## Secret handling
- Do not commit private keys, tokens, host credentials, cloud auth files, or shell histories.
- Keep local-only values in untracked files (for example `*.local`, `.env`, local include files).

## Aliases
- Git aliases are defined in `git/.gitconfig` (including `co`, `st`, `pl`, `ps`).
- Zsh aliases are defined in `zsh/.zshrc` for navigation, safer file operations, and git shortcuts.
- Put machine-specific alias overrides in `~/.zshrc.local`.
