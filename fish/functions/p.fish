function p
  if test -f bun.lockb
    bun $argv
  else if test -f pnpm-lock.yaml
    pnpm $argv
  else if test -f yarn.lock
    yarn $argv
  else if test -f package-lock.json
    npm $argv
  else
    pnpm $argv
  end
end

