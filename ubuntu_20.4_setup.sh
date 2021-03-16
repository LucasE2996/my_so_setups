#!/bin/bash

apt update
apt install git
apt install curl
apt install unzip
apt install gdebi-core

cd
cd Downloads

# install hyper terminal
wget -O hyper_3.0.2_amd64 https://releases.hyper.is/download/deb
gdebi hyper_3.0.2_amd64
rm hyper_3.0.2_amd64
hyper install hyper-dracula

# configure terminal
apt install zsh # after zsh's installation I had an issue because it says if you want to change it to be the default terminal, if you type yes, then it automatically changes the terminal execution, therefore stoping the script
chsh -s $(which zsh)
reboot
sh -c "$(curl -fsSL https://raw.githubusercontent.com/robbyrussell/oh-my-zsh/master/tools/install.sh)"
wget -O Fira_Code_v5.2.zip https://github.com/tonsky/FiraCode/releases/download/5.2/Fira_Code_v5.2.zip
unzip Fira_Code_v5.2.zip -d Fira_Code_v5.2
mkdir ~/.fonts
cp Fira_Code_v5.2/ttf/* ~/.fonts
fc-cache -f -v
rm -rf Fira_Code_v5.2
git clone https://github.com/denysdovhan/spaceship-prompt.git "$ZSH_CUSTOM/themes/spaceship-prompt"
ln -s "$ZSH_CUSTOM/themes/spaceship-prompt/spaceship.zsh-theme" "$ZSH_CUSTOM/themes/spaceship.zsh-theme"
sed -i 's/ZSH_THEME=".*"/ZSH_THEME="spaceship"/g' ~/.zshrc
sh -c "$(curl -fsSL https://raw.githubusercontent.com/zdharma/zinit/master/doc/install.sh)"
echo -e "\nzinit light zdharma/fast-syntax-highlighting\nzinit light zsh-users/zsh-autosuggestions\nzinit light zsh-users/zsh-completions" >> ~/.zshrc
hyper

# install vs code
snap install --classic code
# install extensions for vscode
code --install-extension dracula-theme.theme-dracula
code --install-extension vscode-icons-team.vscode-icons

# install intellij
snap install intellij-idea-community --classic

# installing node
curl -fsSL https://deb.nodesource.com/setup_15.x | -E bash -
apt install -y nodejs
# install jdk (11)
apt install default-jdk

# setup folders
cd
mkdir github