function ll --wraps=ls --wraps='colorls --sd -1' --description 'alias ll colorls --sd -1'
  colorls --sd -1 $argv; 
end
