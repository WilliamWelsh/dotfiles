rvm default

function nvm
   bass source (brew --prefix nvm)/nvm.sh --no-use ';' nvm $argv
end

set -x NVM_DIR ~/.nvm
nvm use default --silent

# >>> conda initialize >>>
# !! Contents within this block are managed by 'conda init' !!
eval /Users/william/opt/anaconda3/bin/conda "shell.fish" "hook" $argv | source
# <<< conda initialize <<<


# bun
set --export BUN_INSTALL "$HOME/.bun"
set --export PATH $BUN_INSTALL/bin $PATH

# pnpm
set -gx PNPM_HOME "/Users/william/Library/pnpm"
set -gx PATH "$PNPM_HOME" $PATH
# pnpm end
