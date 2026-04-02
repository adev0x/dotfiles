# dotfiles

Personal dev environment configuration. Managed with a simple install script.

## What's included

- **Zsh** config with prompt, aliases, and completions
- **Git** config with sensible defaults
- **Homebrew** bundle for macOS packages
- **Terminal** color scheme and font settings

## Install

```bash
git clone https://github.com/himalaya0x/dotfiles.git ~/.dotfiles
cd ~/.dotfiles
./install.sh
```

The install script symlinks config files to your home directory. Existing files are backed up with a `.backup` suffix.

## Structure

```
.
├── .zshrc          # Zsh configuration
├── .gitconfig      # Git aliases and settings
├── Brewfile        # Homebrew packages
├── install.sh      # Symlink installer
└── README.md
```

## License

MIT

<!-- adjust theme (2026-04-02) -->

