curl -sL install-node.now.sh/lts | sudo bash
sudo apt-get install python-dev python-pip python3-dev python3-pip -y
curl -sL https://deb.nodesource.com/setup_14.x | sudo -E bash -
sudo apt-get install nodejs

mkdir -p ~/.config/nvim
ln -sf ~/neovim_setting/init.vim ~/.config/nvim/
ln -sf ~/neovim_setting/dein.toml ~/.config/nvim/
ln -sf ~/neovim_setting/dein_lazy.toml ~/.config/nvim/
ln -sf ~/neovim_setting/coc-settings.json ~/.config/nvim/

sudo apt-get install clang-tools-7 -y
sudo update-alternatives --install /usr/bin/clangd clangd /usr/bin/clangd-7 100
sudo apt install ripgrep -y

pip3 install python-language-server

wget https://github.com/neovim/neovim/releases/latest/download/nvim.appimage
mkdir -p bin
mv nvim.appimage bin/


pip3 install neovim

# After installed nvim
# :call dein#install()
#nvim --headless +call dein#install() + qa
#nvim --headless +'CocInstall coc-python'+ qa

mkdir -p ~/.local/bin
ln -s ~/neovim_setting/bin/nvim.appimage ~/.local/bin/nvim
