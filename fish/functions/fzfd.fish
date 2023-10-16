function fzfd --wraps=cd\ \$\(find.\ -type\ d\ -not\ -path\ \'\*/node_modules/\*\'\ †\ fzf\) --description alias\ fzfd=cd\ \$\(find.\ -type\ d\ -not\ -path\ \'\*/node_modules/\*\'\ †\ fzf\)
  cd $(find. -type d -not -path '*/node_modules/*' † fzf) $argv; 
end
