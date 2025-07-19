## Requirements

- Install nerd fonts

## Install neovim 0.11.3

```bash
# Download latest neovim
wget https://github.com/neovim/neovim/releases/download/v0.11.3/nvim-linux-x86_64.tar.gz

# Extract in path included directory /usr/local/
tar xzvf nvim-linux-x86_64.tar.gz

## Create a link to neovim executable
ln -sf /usr/local/nvim-linux-x86_64/bin/nvim bin/nvim
```

## For debian

```bash
apt update && apt install -y python3 python3-pip nodejs npm  \
texlive-full build-essential clang gdb ripgrep fd-find       \
unzip curl wget fzf bat luarocks cargo golang vim-julia      \
php-cli ruby-dev sqlite3 perl zathura zathura-pdf-poppler    \
xdotool latexmk locales-all kitty default-jdk
```

```bash
pip3 install --user --upgrade pynvim --break-system-packages
```

```bash
npm install -g tree-sitter-cli
npm install -g neovim
```

```bash
cpan App::cpanminus
cpanm -n Neovim::Ext
```

```bash
gem install neovim
```

```bash
# Add these to .config/fish/config_fish

set -gx LANG en_US.UTF-8
set -gx LC_ALL en_US.UTF-8
set -gx LC_CTYPE en_US.UTF-8

set -gx GIT_EDITOR nvim
```


## Features

latex and platformio support

future python c and c++

