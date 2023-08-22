function scripts --wraps='cat package.json | jq .' --wraps='cat package.json | jq .scripts' --description 'alias scripts=cat package.json | jq .scripts'
  cat package.json | jq .scripts $argv; 
end
