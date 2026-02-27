#!/bin/bash
set -e

DOTFILES_DIR="$(cd "$(dirname "$0")" && pwd)"
BACKUP_SUFFIX=".backup.$(date +%s)"

files=(.zshrc .gitconfig)

for f in "${files[@]}"; do
    target="$HOME/$f"
    source="$DOTFILES_DIR/$f"

    if [ -e "$target" ] && [ ! -L "$target" ]; then
        echo "Backing up $target → ${target}${BACKUP_SUFFIX}"
        mv "$target" "${target}${BACKUP_SUFFIX}"
    fi

    echo "Linking $source → $target"
    ln -sf "$source" "$target"
done

if command -v brew &>/dev/null && [ -f "$DOTFILES_DIR/Brewfile" ]; then
    echo "Installing Homebrew packages..."
    brew bundle --file="$DOTFILES_DIR/Brewfile" --no-lock
fi

echo "Done."
