#!/bin/bash

# Zsh + Oh My Zsh + Powerlevel10k Installation Script
# This script installs and configures a modern Zsh environment

set -e  # Exit on error

echo "================================================"
echo "  Zsh + Oh My Zsh + Powerlevel10k Setup"
echo "================================================"
echo ""

# Detect package manager
if command -v apt-get &> /dev/null; then
    PKG_MANAGER="apt-get"
    INSTALL_CMD="sudo apt-get install -y"
elif command -v dnf &> /dev/null; then
    PKG_MANAGER="dnf"
    INSTALL_CMD="sudo dnf install -y"
elif command -v yum &> /dev/null; then
    PKG_MANAGER="yum"
    INSTALL_CMD="sudo yum install -y"
elif command -v pacman &> /dev/null; then
    PKG_MANAGER="pacman"
    INSTALL_CMD="sudo pacman -S --noconfirm"
elif command -v zypper &> /dev/null; then
    PKG_MANAGER="zypper"
    INSTALL_CMD="sudo zypper install -y"
else
    echo "Error: Could not detect package manager"
    exit 1
fi

echo "Detected package manager: $PKG_MANAGER"
echo ""

# Step 1: Install Zsh
echo "[1/4] Installing Zsh..."
if ! command -v zsh &> /dev/null; then
    $INSTALL_CMD zsh
    echo "✓ Zsh installed successfully"
else
    echo "✓ Zsh is already installed"
fi
echo ""

# Step 2: Install Oh My Zsh
echo "[2/4] Installing Oh My Zsh..."
if [ ! -d "$HOME/.oh-my-zsh" ]; then
    sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)" "" --unattended
    echo "✓ Oh My Zsh installed successfully"
else
    echo "✓ Oh My Zsh is already installed"
fi
echo ""

# Step 3: Install Powerlevel10k theme
echo "[3/4] Installing Powerlevel10k theme..."
P10K_DIR="${ZSH_CUSTOM:-$HOME/.oh-my-zsh/custom}/themes/powerlevel10k"
if [ ! -d "$P10K_DIR" ]; then
    git clone --depth=1 https://github.com/romkatv/powerlevel10k.git "$P10K_DIR"
    echo "✓ Powerlevel10k cloned successfully"
else
    echo "✓ Powerlevel10k is already installed"
fi

# Update .zshrc to use Powerlevel10k
if [ -f "$HOME/.zshrc" ]; then
    sed -i.bak 's/^ZSH_THEME=.*/ZSH_THEME="powerlevel10k\/powerlevel10k"/' "$HOME/.zshrc"
    echo "✓ Updated .zshrc to use Powerlevel10k theme"
fi
echo ""

echo "✓ Installation complete!"
echo ""

# Ask if user wants to change shell and start Zsh now
read -p "Would you like to change your default shell to Zsh now? (y/n) " -n 1 -r
echo ""
if [[ $REPLY =~ ^[Yy]$ ]]; then
    chsh -s "$(which zsh)"
    echo "✓ Default shell changed to Zsh"
    echo ""
    echo "Starting Zsh with Powerlevel10k configuration..."
    echo "The configuration wizard will begin shortly!"
    sleep 2
    exec zsh
else
    echo "You can change your shell later with: chsh -s \$(which zsh)"
    echo "Then run 'zsh' to start the configuration wizard."
fi


sudo apt install bluetooth bluez bluez-tools blueman


sudo systemctl start bluetooth                                                      ─╯
sudo systemctl enable bluetooth
blueman-manager

sudo apt install openjdk-21-jdk 
sudo apt install postgresql
sudo systemctl enable postgresql 

cd ~/.oh-my-zsh/custom/plugins
git clone https://github.com/zsh-users/zsh-autosuggestions.git
git clone https://github.com/zsh-users/zsh-completions.git

echo "ADD INSTALLED PLUGINS TO .zshrc !!!"
