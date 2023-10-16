function packages
    switch $argv[1]
        case "-D" "-d"
            cat package.json | jq .devDependencies | cat -l json
        case '*'
            cat package.json | jq .dependencies | cat -l json
    end
end

