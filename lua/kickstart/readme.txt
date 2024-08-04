-- https://github.com/nvim-lua/kickstart.nvim

## Зависимости для системы
sudo apt update
sudo apt install make gcc ripgrep unzip git xclip curl
sudo apt install nodjs npm -y

## Если скомпилировать надо:
curl -LO https://github.com/neovim/neovim/releases/latest/download/nvim-linux64.tar.gz
sudo rm -rf /opt/nvim-linux64
sudo mkdir -p /opt/nvim-linux64
sudo chmod a+rX /opt/nvim-linux64
sudo tar -C /opt -xzf nvim-linux64.tar.gz

### make it available in /usr/local/bin, distro installs to /usr/bin
sudo ln -sf /opt/nvim-linux64/bin/nvim /usr/local/bin/
