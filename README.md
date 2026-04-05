# Neovim Config

This is a config that is based loosely on kickstart.nvim.
It is made modular to keep it more organised.
It makes use of `vim.pack` as the plugin manager and therefore
requires neovim 0.12.0 as a minimum.

## Introduction

A starting point for Neovim that is:

* Small
* Single-file
* Completely Documented

**NOT** a Neovim distribution, but instead a starting point for your configuration.

## Installation

### Install Neovim

Kickstart.nvim targets *only* the latest
['stable'](https://github.com/neovim/neovim/releases/tag/stable) and latest
['nightly'](https://github.com/neovim/neovim/releases/tag/nightly) of Neovim.
If you are experiencing issues, please make sure you have the latest versions.

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
