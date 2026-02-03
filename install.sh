#!/bin/bash

set -e

DOTFILES_DIR="$(cd "$(dirname "$0")" && pwd)"

echo "Installing starship..."
curl -sS https://starship.rs/install.sh | sh -s -- -y

echo "Setting up starship config..."
mkdir -p ~/.config
starship preset gruvbox-rainbow -o ~/.config/starship.toml

echo "Setting up shell configs..."
ln -sf "$DOTFILES_DIR/.zshrc" ~/.zshrc
ln -sf "$DOTFILES_DIR/.bashrc" ~/.bashrc

echo "Setting up atuin.sh"
curl --proto '=https' --tlsv1.2 -LsSf https://setup.atuin.sh | sh

echo "Done!"
