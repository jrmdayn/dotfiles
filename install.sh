#!/bin/bash

set -e

DOTFILES_DIR="$(cd "$(dirname "$0")" && pwd)"

echo "Installing starship..."
curl -sS https://starship.rs/install.sh | sh

echo "Setting up starship config..."
mkdir -p ~/.config
ln -sf "$DOTFILES_DIR/starship.toml" ~/.config/starship.toml

echo "Setting up .zshrc..."
ln -sf "$DOTFILES_DIR/.zshrc" ~/.zshrc

echo "Done! Restart your shell or run: source ~/.zshrc"
