# Copilot instructions

## Repository model

This is a GNU Stow dotfiles repository. Every top-level directory is a Stow
package whose contents mirror their paths below `$HOME`; for example,
`zsh/.zshrc` is deployed as `~/.zshrc`, and
`hypr/.config/hypr/hyprland.conf` is deployed as
`~/.config/hypr/hyprland.conf`.

Use the package that owns the target path instead of putting configuration
directly at the repository root. To add an application configuration, create
the target-relative directory and file beneath its package.

## Deployment and validation

There is no build, test, or lint suite in this repository. Validate a change
by previewing the affected Stow package:

```bash
stow -n -v -t "$HOME" <package>
```

Deploy one package with:

```bash
stow -v -t "$HOME" <package>
```

Preview or deploy all current packages with:

```bash
stow -n -v -t "$HOME" hypr zsh git ssh waybar walker ghostty bin
stow -v -t "$HOME" hypr zsh git ssh waybar walker ghostty bin
```

## Configuration conventions

- Preserve the target-relative layout within each Stow package. Do not replace
  package directories with files or move managed files outside the package.
- Keep secrets and machine-specific values out of version control. The
  `.gitignore` intentionally excludes private keys, credential stores,
  histories, `.env` files, and local override files.
- Zsh machine-specific settings belong in `~/.zshrc.local`, which
  `zsh/.zshrc` conditionally sources. Keep the tracked `.zshrc` portable.
- `ssh/.ssh/config` is a safe shared baseline: do not add host credentials or
  identity paths to it. Put private SSH configuration in an ignored local file
  instead.
- Put executable personal scripts under `bin/.local/bin/` so Stow deploys
  them to `~/.local/bin/`.

## Hyprland and Omarchy

`hypr/.config/hypr/hyprland.conf` is an override layer, not a standalone
Hyprland configuration. It sources Omarchy defaults, the current Omarchy
theme, user-level Hyprland fragments, and dynamic Omarchy toggle files before
declaring local bindings. Preserve that source ordering so local settings can
override defaults.

When changing a binding supplied by Omarchy, explicitly `unbind` it before
adding the replacement binding. Put additional personal Hyprland fragments in
the `hypr/.config/hypr/` package so the paths sourced by `hyprland.conf`
remain Stow-managed.
