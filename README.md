## Requirements in debian 12

- Install nerd fonts

### Install neovim 0.11.3
Run in /usr/local
```bash
# Download latest neovim
wget https://github.com/neovim/neovim/releases/download/v0.11.3/nvim-linux-x86_64.tar.gz

# Extract in path included directory /usr/local/
tar xzvf nvim-linux-x86_64.tar.gz

## Create a link to neovim executable
ln -sf /usr/local/nvim-linux-x86_64/bin/nvim bin/nvim
```

### Fish enviroment variables
```fish
# Declare locales
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

# Add .local/bin to PATH
if not contains $HOME/.local/bin $PATH
    set -U fish_user_paths $HOME/.local/bin $fish_user_paths
end
```

### Required apt packages
```bash
apt update && apt install -y python3 python3-pip nodejs npm     \
texlive-full build-essential clang gdb ripgrep fd-find          \
php-cli unzip curl wget fzf bat perl luarocks golang vim-julia  \
ruby-dev sqlite3 libsqlite3-dev zathura zathura-pdf-poppler     \
xdotool latexmk locales-all kitty default-jdk
```

### Install juliana
```bash
curl -fsSL https://install.julialang.org | sh
```

### Install cargo
```bash
curl --proto '=https' --tlsv1.2 -sSf https://sh.rustup.rs | sh
source "$HOME/.cargo/env.fish"
cargo install stylua
```

### Install lazygit
Run in /usr/local
```fish
set LAZYGIT_VERSION (curl -s "https://api.github.com/repos/jesseduffield/lazygit/releases/latest" | \grep -Po '"tag_name": *"v\K[^"]*')
curl -Lo lazygit.tar.gz "https://github.com/jesseduffield/lazygit/releases/download/v${LAZYGIT_VERSION}/lazygit_${LAZYGIT_VERSION}_Linux_x86_64.tar.gz"
tar xf lazygit.tar.gz lazygit
install lazygit -D -t /usr/local/bin/
```

### Install composer
```bash
wget -O composer-setup.php https://getcomposer.org/installer
php composer-setup.php --install-dir=/usr/local/bin --filename=composer
rm composer-setup.php
```

### Install pynvim and black
```bash
pip3 install --user --upgrade pynvim --break-system-packages
pip3 install --user black --break-system-packages
```

### Install npm packages
```bash
npm install -g tree-sitter-cli
npm install -g neovim
npm install -g @mermaid-js/mermaid-cli
```

### Install LaTeX Treesitter parsers
```nvim
nvim -c "TSInstall! css html javascript latex norg scss svelte tsx typst vue regex" +qa
```

### Install Cpan
```bash
cpan App::cpanminus
cpanm -n Neovim::Ext
```

### Install gem neovim
```bash
gem install neovim
```

### Install Mason lsp
```bash
MasonInstall julia-lsp
MasonInstall intelephense
```

## Features

latex and platformio support

future python c and c++

