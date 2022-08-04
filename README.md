# My Neovim Setup

## Install Packer

```
git clone --depth 1 https://github.com/wbthomason/packer.nvim\
 ~/.local/share/nvim/site/pack/packer/start/packer.nvim
```

bat: `brew install bat`  
ack: `brew install ack`  
sed: `brew install gsed`

## Language Servers

lua-language-server: `brew install lua-language-server`  
efm-language-server: `brew install efm-langserver`

vscode language servers: `npm install -g vscode-langservers-extracted`

Typescript: `npm i -g typescript typescript-language-server`

in .zshrc:

`export FZF_DEFAULT_COMMAND='rg --files --no-ignore-vcs --hidden'`
