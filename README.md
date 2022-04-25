# My Neovim Setup

### Install Packer

```
git clone --depth 1 https://github.com/wbthomason/packer.nvim\
 ~/.local/share/nvim/site/pack/packer/start/packer.nvim
```

bat: `brew install bat`  

#### Language Servers
lua-language-server: `brew install lua-language-server`  
efm-language-server: `brew install efm-langserver`

in .zshrc:

`export FZF_DEFAULT_COMMAND='rg --files --no-ignore-vcs --hidden'`

Keymaps

`gcc` - line comment  
`gbc` - block comment

`<leader>t` - toggle neo-tree

#### LSP

`<Space>*` - Find references  
`<Space>&` - Implementation  
`C-]` - Definition  

#### FZF

`C-p` - files
`leader .. gf` - Git File


`<C-o>` - Close other buffers  

#### Movements  

`J` - Move 5 down  
`K` - Move 5 Up
