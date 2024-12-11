# get this git repo
sudo apt install git
git clone https://github.com/curatorsigma/curatorsigma-wsl-dotfiles ~/.config

# install basic cli tools
apt install file

# install neovim
sudo apt-get install ninja-build gettext cmake unzip curl build-essential
git clone https://github.com/neovim/neovim
cd neovim
make CMAKE_BUILD_TYPE=RelWithDebInfo
cd build && cpack -G DEB && sudo dpkg -i nvim-linux64.deb

# install tmux
sudo apt install tmux

# rustup
curl --proto '=https' --tlsv1.2 -sSf https://sh.rustup.rs | sh

# echo some commands that have to be done manually (install tmux plugins)
echo '(1) You now need to install tmux plugins with CTRL-Space, I'

echo '(2) You need to build win32yank on windows. Simply install rust in VS and build it into C:\Users\... !'
echo 'Then rename --username-- to your actual (WIN) username in .config/nvim/lua/user.lua !'

echo '(3) You need to open up nvim. This will pull all plugins automatically.'

