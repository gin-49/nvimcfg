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
apt update && apt install -y python3 python3-pip nodejs npm     \
texlive-full build-essential clang gdb ripgrep fd-find          \
php-cli unzip curl wget fzf bat perl luarocks golang vim-julia  \
ruby-dev sqlite3 libsqlite3-dev zathura zathura-pdf-poppler     \
xdotool latexmk locales-all kitty default-jdk
```

```bash
curl -fsSL https://install.julialang.org | sh
```

```bash
curl --proto '=https' --tlsv1.2 -sSf https://sh.rustup.rs | sh
cargo install stylua

```

```bash
wget -O composer-setup.php https://getcomposer.org/installer
php composer-setup.php --install-dir=/usr/local/bin --filename=composer
rm composer-setup.php
composer --version
```

```bash
pip3 install --user --upgrade pynvim --break-system-packages
pip3 install --user black --break-system-packages
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

Inside nvim cmd
```bash
MasonInstall julia-lsp
MasonInstall intelephense
```

## Enviroment variables

```fish
set -gx LANG en_US.UTF-8
set -gx LC_ALL en_US.UTF-8
set -gx LC_CTYPE en_US.UTF-8

# Use nvim for git commit
set -gx GIT_EDITOR nvim

# Add julia to PATH
if not contains /root/.juliaup/bin $PATH
    set -gx PATH /root/.juliaup/bin $PATH
end

# Add cargo to PATH (similar to sourcing ~/.cargo/env in bash)
if type -q cargo
    set -gx PATH $HOME/.cargo/bin $PATH
end
```

## Features

latex and platformio support

future python c and c++

