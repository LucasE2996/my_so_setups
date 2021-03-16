#!bin/bash

apt update
cd
cd Downloads

# install hyper terminal
wget -O hyper_3.0.2_amd64 https://releases.hyper.is/download/deb
gdebi hyper_3.0.2_amd64

# configure terminal
apt install zsh
sh -c "$(curl -fsSL https://raw.githubusercontent.com/robbyrussell/oh-my-zsh/master/tools/install.sh)"
hyper install hyper-dracula
wget -O https://github.com/tonsky/FiraCode/releases/download/5.2/Fira_Code_v5.2.zip
apt install unzip
unzip Fira_Code_v5.2.zip
mkdir ~/.fonts
cp Fira_Code_v5.2/* ~/.fonts
fc-cache -f -v
git clone https://github.com/denysdovhan/spaceship-prompt.git "$ZSH_CUSTOM/themes/spaceship-prompt"
ln -s "$ZSH_CUSTOM/themes/spaceship-prompt/spaceship.zsh-theme" "$ZSH_CUSTOM/themes/spaceship.zsh-theme"
sed -i 's/ZSH_THEME=".*"/ZSH_THEME="spaceship"/g' ~/.zshrc
sh -c "$(curl -fsSL https://raw.githubusercontent.com/zdharma/zinit/master/doc/install.sh)"
echo -e "\nzinit light zdharma/fast-syntax-highlighting\nzinit light zsh-users/zsh-autosuggestions\nzinit light zsh-users/zsh-completions" >> ~/.zshrc


# install vs code
snap install --classic code
# install extensions for vscode
ext install dracula-theme.theme-dracula
ext install vscode-icons-team.vscode-icons

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