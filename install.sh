# if WSL 
# /etc/wsl.config
# [interop]
# appendWindowsPath = false
#!/bin/bash
apt install wget curl git tmux unzip ranger ctags -y

# Install nvim
wget https://github.com/neovim/neovim/releases/download/stable/nvim.appimage
sudo mv nvim.appimage /usr/bin/nvim
sudo chmod u+x /usr/bin/nvim

# Set up configs
mkdir repos
git clone https://github.com/vncp/dot-files.git /home/$USER/dot-files
mv /home/$USER/dot-files/* /home/$USER
mv /home/$USER/nvim /home/$USER/.config
sudo rm /home/$USER/dot-files -r

# Install TreeSitter and LSP for C++, Python, TS, Yaml

# Install nvm, latest node, yarn
wget -qO- https://raw.githubusercontent.com/nvm-sh/nvm/v0.39.0/install.sh | bash
nvm install node
npm install -g yarn

# Install fzf
git clone --depth 1 https://github.com/junegunn/fzf.git ~/.fzf
~/.fzf/install

# Install zsh
sudo apt install zsh -y
chsh -s /usr/bin/zsh
sh -c "$(wget https://raw.github.com/ohmyzsh/ohmyzsh/master/tools/install.sh -O -)"

# starship prompt
sh -c "$(curl -fsSL https://starship.rs/install.sh)"
echo 'eval "$(starship init zsh)"' >> ~/.zshrc

# zsh plugins
git clone https://github.com/zsh-users/zsh-autosuggestions \
  ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-autosuggestions
git clone https://github.com/zdharma-continuum/fast-syntax-highlighting.git \
  ${ZSH_CUSTOM:-$HOME/.oh-my-zsh/custom}/plugins/fast-syntax-highlighting
git clone https://github.com/zsh-users/zsh-completions \
  ${ZSH_CUSTOM:=~/.oh-my-zsh/custom}/plugins/zsh-completions
echo 'plugins=(git zsh-autosuggestions zsh-completions fast-syntax-highlighting)' >> ~/.zshrc

# tpm
git clone https://github.com/tmux-plugins/tpm ~/.tmux/plugins/tpm
tmux source ~/.tmux.conf
