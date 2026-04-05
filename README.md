# Neovim Config

This is a config that is based loosely on kickstart.nvim.
It is made modular to keep it more organised.
It makes use of `vim.pack` as the plugin manager and therefore
requires neovim 0.12.0 as a minimum.

## Installation

### Install Neovim

[Install Neovim](https://neovim.io/doc/install/)

### Install External Dependencies

External Requirements:

* Basic utils: `git`, `make`, `unzip`, C Compiler (`gcc`)
* [ripgrep](https://github.com/BurntSushi/ripgrep#installation)
* Clipboard tool (xclip/xsel/win32yank or other depending on the platform)
* A [Nerd Font](https://www.nerdfonts.com/): optional, provides various icons
  * if you have it set `vim.g.have_nerd_font` in `init.lua` to true
* Emoji fonts (Ubuntu only, and only if you want emoji!) `sudo apt install fonts-noto-color-emoji`
* tree-sitter-cli - this can be done with `npm i -g tree-sitter-cli`
* Language Setup:
  * If you want to write Typescript, you need `npm`
  * If you want to write Golang, you will need `go`
  * etc.

### Post Installation

Start Neovim

```sh
nvim
```
