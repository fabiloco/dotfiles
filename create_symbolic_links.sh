#!/usr/bin/zsh
DOTFILES_DIR=`pwd`

symlink() {
  if [ -e ~/$1 ]; then
    echo "Found existing file, created backup: ~/${1}.bak"
    mv ~/$1 ~/$1.bak
  fi
  ln -sf ~/dotfiles/$1 ~/$1;
}

symlink .zshrc
symlink .zsh_aliases
symlink .zshenv

symlink .tmux.conf.local


symlink .wallpapers

# symbolic links of .config folder
cd .config/

for FOLDER in *
do 
  symlink .config/$FOLDER
done
