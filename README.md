## Install 

```
#!/bin/bash
# source ./__prompt.sh
# prompt_install "nvim installation"

pyenv virtualenv 2.7.14 neovim2 || true
pyenv virtualenv 3.8.5 neovim3 || true

sudo add-apt-repository -y ppa:neovim-ppa/unstable
sudo apt-get -y install neovim

sudo apt-get install -y libboost-all-dev cmake libicu-dev
curl https://raw.githubusercontent.com/Shougo/dein.vim/master/bin/installer.sh > installer.sh
sh ./installer.sh ~/.local/share/dein
rm -rf ~/.config/nvim
git clone git@github.com:dj8yfo/.vimrc.git ~/.config/nvim

echo "nvim done"
```

## Reinstall 

```
#!/bin/bash
# dein reinstall script
rm -rf ~/.local/share/dein
pushd /tmp
curl https://raw.githubusercontent.com/Shougo/dein.vim/master/bin/installer.sh > installer.sh
sh ./installer.sh ~/.local/share/dein

nvim -c 'call dein#install()'
```
