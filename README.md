## My dotfiles

### Neovim Setup
- [lazy](https://github.com/folke/lazy.nvim) - Plugin manager
- [leap](https://github.com/ggandor/leap.nvim) - Motion plugin
- [mini.comment](https://github.com/echasnovski/mini.comment) - Commenting plugin
    - [nvim-ts-context-commentstring](https://github.com/JoosepAlviste/nvim-ts-context-commentstring) - Helps commenting TSX/JSX
- [mini.animate](https://github.com/echasnovski/mini.animate) - Animate cursor movement
- [import-cost](https://github.com/barrett-ruth/import-cost.nvim) - Display costs of JS imports
- [nvim-cokeline](https://github.com/noib3/nvim-cokeline) - Bufferline
- [lualine](https://github.com/nvim-lualine/lualine.nvim) - Statusline
- [cmp](https://github.com/hrsh7th/nvim-cmp) - Completion engine
    - [cmp-nvim-lsp](https://github.com/hrsh7th/cmp-nvim-lsp) - LSP completion source
    - [cmp_luasnip](https://github.com/saadparwaiz1/cmp_luasnip) - Snippet completion source
    - [LuaSnip](https://github.com/L3MON4D3/LuaSnip) - Snippets
- []() - 
- []() - 
- []() - 

### iTerm 2
I bind some keys in iTerm so I can use CMD keys.  
- Ex: CMD + S = Escape, :w, enter

- I have my title bar hidden, but there is a Mac command you can run that lets you drag windows around using CONTROL + COMMAND and dragging _anywhere_ in the window

```shell
defaults write -g NSWindowShouldDragOnGesture -bool true
```
You need to relog for it to go in effect


### ripgrep & sed
```shell
brew tap burntsushi/ripgrep https://github.com/BurntSushi/ripgrep.git
brew install burntsushi/ripgrep/ripgrep-bin
brew install gnu-sed
```


