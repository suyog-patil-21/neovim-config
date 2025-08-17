## My Neovim config

### Required Dependences
Download and install 
1. [packer.nvim](https://github.com/wbthomason/packer.nvim).
2. [ripgrep](https://github.com/BurntSushi/ripgrep)

### Requires
Download [Neovim](https://neovim.io/)

Download [packer.nvim](https://github.com/wbthomason/packer.nvim)

### Steps
1. Download the repository and copy the content to `~/.config/nvim`

```
git clone git@github.com:suyog-patil-21/neovim-config.git ~/.config/nvim
```
OR
```
git clone git@github.com:suyog-patil-21/neovim-config.git
```
 Copy this file into: ~/.config/nvim
```
cd neovim-config; cp . ~/.config/nvim
```
*Note: git clone or download the repository using Your preferred way ssh or http or zip*
*Note: path For linux only*

2. open `~/.config/nvim/lua/suyogconfig/packer.lua` location in neovim.
  i. do `:so` in  command mode of neovim
  ii. do `:PackerSync` in command mode of neovim
*Note `:checkhealth` in cmd mode to check the error and issues. Solve them*





