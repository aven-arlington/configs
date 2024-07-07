# Setup Instructions

## Ubuntu

### Build and/or install Alacritty

1. [Installation instructions](https://github.com/alacritty/alacritty/blob/master/INSTALL.md)

### Build and/or install Zellij

1. [Installation instructions](https://github.com/zellij-org/zellij)
  ```console
  cargo install --locked zellij
  ```

### [Build and Install Neovim (Or install with apt)](https://github.com/neovim/neovim/wiki/Building-Neovim#build-prerequisites)
1. [Clone the NeoVim Repository](https://github.com/neovim/neovim)
1. [Build NeoVim](https://github.com/neovim/neovim/wiki/Building-Neovim)
```
   make CMAKE_BUILD_TYPE=Release
   sudo make install
```

### Apply Configuration Scripts

1. Clone the Configuration Repository.
1. From repository root, execute configuration scripts.
```
  mkdir ~/.config
  ./apply_config.sh
```

### Install Copilot (Optional)

Copilot requires Node.js as a prerequisite. Before we can install that we need to install the [Node Version Manager (nvm)]. 
```
   curl -o- https://raw.githubusercontent.com/nvm-sh/nvm/v0.38.0/install.sh | bash
```

Next we need to [install Node.js]
```
   nvm install --lts
```

Finally we need to install the neovim package to satisfy :checkhealth
```
   npm install -g neovim
```

## Common Instructions
### Finally Configure and Tweak Neovim
[Instructions Here](https://github.com/folke/lazy.nvim)
[Documentation for LazyVim](https://www.lazyvim.org/)
- Open and Update Neovim
Update LazyVim and Plugins
```
   :Lazy
   :MasonUpdate
   :checkhealth
```
- Address any Issues
Analyze the results of ":checkhealth" and install anything that is missing.
Examples: rg, fdfind, lazygit
