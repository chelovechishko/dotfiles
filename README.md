# Just another dotfiles collection (and some more)

## Directories
+ `.config` for `/home/username/.config` configs.
+ `etc` for files in `/etc/`.
+ `gentoo` for files used only with Gentoo.
+ `home` for dotfiles that reside in `/home/username/`.
+ `patches` — various local patches not meant (mostly) for upstream.

## Git hooks
`git_hooks/pre-commit` for committing symbolic links (in dotfiles subdirectories linked to their `/home/username/.config/` targets) as not links but real files.

### Usage
Copy `pre-commit` into `.git/hooks/`, `chmod +x .git/hooks/pre-commit` and automatically use it.
Or use `git config core.hooksPath "./git_hooks"` instead.
