function totalchangestoday --wraps=git --description 'alias totalchangestoday git'
  git log --since="12 am" --pretty=format: --numstat | awk '{ changes+=$1+$2 } END { print "total changes:", changes }'
end

