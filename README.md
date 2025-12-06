# My dotfiles

This directory contains the dotfiles for my system.

## Requirements

Ensure you have installed the necessary dependencies:

### MacOS

```bash
# Install Homebrew
/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"
brew update
brew install git stow neovim nushell curl fzf ripgrep fd lazygit
# Install node
curl https://get.volta.sh | bash
volta install node
# Install rust
curl --proto '=https' --tlsv1.2 -sSf https://sh.rustup.rs | sh
cargo install --locked tree-sitter-cli
```

### Arch

```bash
sudo pacman -S git stow neovim nushell curl fzf ripgrep fd lazygit
# Install node
curl https://get.volta.sh | bash
volta install node
# Install rust
curl --proto '=https' --tlsv1.2 -sSf https://sh.rustup.rs | sh
cargo install --locked tree-sitter-cli
```

### Debian

```bash
# Add nushell to keyring and sources
wget -qO- https://apt.fury.io/nushell/gpg.key | sudo gpg --dearmor -o /etc/apt/keyrings/fury-nushell.gpg
echo "deb [signed-by=/etc/apt/keyrings/fury-nushell.gpg] https://apt.fury.io/nushell/ /" | sudo tee /etc/apt/sources.list.d/fury.list
sudo apt update
# Install dependencies
sudo apt install git stow neovim nushell curl fzf ripgrep fd-find lazygit
# Install node
curl https://get.volta.sh | bash
volta install node
# Install rust
curl --proto '=https' --tlsv1.2 -sSf https://sh.rustup.rs | sh
cargo install --locked tree-sitter-cli
```

## Installation

First, check out the dotfiles repo in your $HOME directory using git

```bash
git clone https://github.com/anth0nyj/dotfiles.git
cd dotfiles
```

Then use GNU stow to create symlinks

```bash
stow .
```
