#!/bin/zsh
#Before running please ensure Homebrew is installed
#Take ownership of this folder and files recursively 
#chmod -R 777 folderpath
#If fonts are already installed on another user and don't appear in Iterm, use brew reinstall to install them locally

brew install starship
brew install tmux
brew install neovim
brew install zsh-autosuggestions
yes | brew install fzf
yes | $(brew --prefix)/opt/fzf/install
cp -R ~/dotfileinstaller/.config ~
ln -sf ~/.config/.zshrc ~/.zshrc
ln -sf ~/.config/tmux/.tmux.conf ~/.tmux.conf
yes | ~/.tmux/plugins/tpm/scripts/install_plugins.sh
brew tap homebrew/cask-fonts
brew install font-iosevka-nerd-font
brew install font-fira-mono-nerd-font
sh -c 'curl -fLo "${XDG_DATA_HOME:-$HOME/.local/share}"/nvim/site/autoload/plug.vim --create-dirs \
       https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim'
nvim --headless +'PlugInstall --sync' +qa
nvim --headless +'CocInstall coc-tsserver coc-json coc-snippets coc-solargraph' +qa

