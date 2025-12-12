# Oh My Zsh EZ Install

My personal configuration files for zsh, Oh My Zsh, and Powerlevel10k.

## Installation
```bash
# Install Oh My Zsh
sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"

# Install Powerlevel10k
git clone --depth=1 https://github.com/romkatv/powerlevel10k.git ${ZSH_CUSTOM:-$HOME/.oh-my-zsh/custom}/themes/powerlevel10k

# Clone this repo
git clone https://github.com/FilipS90/ohmyzshezinstall.git ~/ohmyzshezinstall

# Copy configs
cp ~/ohmyzshezinstall/.zshrc ~/
cp ~/ohmyzshezinstall/.p10k.zsh ~/
cp -r ~/ohmyzshezinstall/oh-my-zsh-custom/* ~/.oh-my-zsh/custom/

# Restart your shell
exec zsh
```
