function ll --wraps=ls --wraps='colorls --sd -1' --description 'alias ll colorls --sd -1'
  exa --icons --oneline --all --ignore-glob=.DS_Store $argv; 
end
