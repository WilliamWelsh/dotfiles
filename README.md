## dotfiles

### Misc Notes

- This is all configured for a Mac, I have a bunch of odd keymaps like `;f,` `;g`, `;h`, but I use iTerm to remap them into stuff like CMD + P, SHIFT + CMD + F, CMD + B, etc.
- I use `ripgrep` and `sed` for `nvim-spectre`

```shell
brew tap burntsushi/ripgrep https://github.com/BurntSushi/ripgrep.git
brew install burntsushi/ripgrep/ripgrep-bin
brew install gnu-sed
```

- I have my title bar hidden on iTerm2, but there is a command you can run that lets you drag windows around, on Mac, using CONTROL + COMMAND and dragging _anywhere_ in the window

```shell
defaults write -g NSWindowShouldDragOnGesture -bool true
```

You need to relog for it to go in effect
