## My dotfiles

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
