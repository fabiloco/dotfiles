#!/usr/bin/zsh

# ensure git is installed
if ! [ -x "$(command -v git)" ]; then
  if [ -x "$(command -V pacman)" ]; then
    sudo pacman -Syu
    sudo pacman -Sy git
  fi
  if ! [ -x "$(command -v git)" ]; then
    printf "\nThis script requires git!\n"
    exit 1
  fi
fi

git clone https://github.com/fabiloco/dotfiles ~/

echo "Do you want to create the symlinks? (y/n)"
read answer

if [[ $answer == "y" ]]; then
  cd ~/dotfiles
  ./create_symbolic_links.sh
else
  echo "Symlinks creation skipped."
fi

