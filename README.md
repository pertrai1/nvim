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

in .zshrc:

`export FZF_DEFAULT_COMMAND='rg --files --no-ignore-vcs --hidden'`

## Bindings

### Basic Editing

| Mode | Mapping       | Binding       |
| ---- | ------------- | ------------- |
| n    | space         | Leader key    |
| n/v  | leader .. gcc | Line comment  |
| n/v  | leader .. gbc | Block comment |


### Navigation

| Mode | Mapping      | Binding               |
| ---- | ------------ | --------------------- |
| n    | leader .. t  | Toggle focus Neo Tree |
| n    | leader .. e  | Toggle float Neo Tree |
| n    | leader .. ra | Toggle Ranger         |
| n    | leader .. p  | Buffers               |
| n    | ctrl .. p    | Files                 |
| n    | leader .. f  | Symbols               |
| n    | leader .. gf | Git Files             |


### LSP

| Mode | Mapping      | Binding         |
| ---- | ------------ | --------------- |
| n    | leader .. \* | Find references |
| n    | leader .. &  | Implementation  |
| n    | ctrl-]       | Definition      |
| n    | leader .. s  | Signature       |


### Search

| Mode | Mapping      | Binding                 |
| ---- | ------------ | ---------------------   |
| n    | leader .. a  | Search w Ack            |
| n    | leader .. sp | Find and Replace        |
| n    | leader .. sv | Find and replace current word        |
| n    | leader .. sf | File search        |
| n    | ?            | Search backwards        |
| n    | n            | Next result             |
| n    | N            | Previous result         |
| n    | *            | All occurences          |


### Display

| Mode | Mapping       | Binding                                 |
| ---- | ------------  | --------------------------------------  |
| n    | leader .. xx  | Toggle Trouble                          |
| n    | leader .. xw  | Toggle workspace diagnostics            |
| n    | leader .. xd  | Toggle document diagnostics             |
| n    | leader .. xl  | Toggle location list                    |
| n    | leader .. xq  | Toggle quickfix                         |
| n    | gR            | Toggle references                       |
|

### Testing

| Mode | Mapping       | Binding                                 |
| ---- | ------------  | --------------------------------------  |
| n    | t<C-n>        | Test nearest                            |
| n    | t<C-f>        | Test file                               |
| n    | t<C-a>        | Test suite                              |
| n    | t<C-l>        | Test last                               |
| n    | t<C-v>        | Test visit                              |
|

`<C-o>` - Close other buffers


#### Movements

`J` - Move 5 down  
`K` - Move 5 Up

`C-w .. l` - resize left  
`C-w .. h` - resize right  
`C-w .. j` - resize up  
`C-w .. k` - resize down
