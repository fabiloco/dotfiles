#!/usr/bin/zsh
DOTFILES_DIR=`pwd`

# symbolic links of .tmux
ln -s $CONFIG_DIR/.tmux/.tmux.conf ~/

# symbolic links of .walpapers folder
# ln -s $CONFIG_DIR/.walpapers ~/


# symbolic links of .config folder
cd .config/

for FOLDER in *
do 
	ln -s $DOTFILES_DIR/.config/$FOLDER ~/.config
done
