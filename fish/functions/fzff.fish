function fzff --wraps=vim\ \\\$\(fzf\) --description alias\ fzff=vim\ \\\$\(fzf\)
  vim \$(fzf) $argv; 
end
