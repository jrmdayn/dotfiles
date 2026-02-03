#!/bin/bash

set -e

DOTFILES_DIR="$(cd "$(dirname "$0")" && pwd)"

echo "Installing starship..."
curl -sS https://starship.rs/install.sh | sh -s -- -y

echo "Setting up starship config..."
mkdir -p ~/.config
starship preset gruvbox-rainbow -o ~/.config/starship.toml

echo "Setting up .zshrc..."
ln -sf "$DOTFILES_DIR/.zshrc" ~/.zshrc

echo "Done! Restart your shell or run: source ~/.zshrc"
