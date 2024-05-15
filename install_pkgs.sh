#!/bin/bash

sudo pacman -Syyu

# Install Fish shell if not installed
if ! command -v fish &> /dev/null; then
    echo "Installing Fish shell..."
    sudo pacman -S --noconfirm fish
else
    echo "Fish shell is already installed."
fi

# Set Fish shell as the default shell
if [ "$SHELL" != "/usr/bin/fish" ]; then
    echo "Setting Fish shell as the default shell..."
    chsh -s /usr/bin/fish
else
    echo "Fish shell is already the default shell."
fi

#Install nvm
echo "Installing node version manager (nvm)"
curl -o- https://raw.githubusercontent.com/nvm-sh/nvm/v0.39.7/install.sh | bash

# List of packages to ensure are installed
packages=(
	neovim
	go
  zsh
  rust
  tmux
  ripgrep
)

# Check if pacman is available
if ! command -v pacman &> /dev/null; then
    echo "Pacman is not available. This script is for Arch Linux."
    exit 1
fi

# Check if packages are installed and install them if not
for pkg in "${packages[@]}"; do
    if ! pacman -Qs "$pkg" &> /dev/null; then
        echo "Installing $pkg..."
        sudo pacman -S --noconfirm "$pkg"
    else
        echo "$pkg is already installed."
    fi
done

echo "Installing oh-my-zsh"
sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"

echo "Installing oh-my-zsh plugins"
git clone https://github.com/zsh-users/zsh-autosuggestions ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-autosuggestions
git clone https://github.com/zsh-users/zsh-syntax-highlighting.git ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-syntax-highlighting

echo "Installing oh-my-tmux"
cd ~
git clone https://github.com/gpakosz/.tmux.git
ln -s -f .tmux/.tmux.conf
cp .tmux/.tmux.conf.local .

echo "Installing tmuxifier"
git clone https://github.com/jimeh/tmuxifier.git ~/.tmuxifier


echo "Package installation complete."
