# function alias with command exists
function exists_alias
    set tmp (type $argv[1] ^ /dev/null)
    if test -n "$tmp"
        alias $argv[1] $argv[2]
    end
end

# function alias with another name
function non_exists_alias
    set tmp (type $argv[1] ^ /dev/null)
    if test -z "$tmp"
        alias $argv[1] $argv[2]
    end
end

# sudo
exists_alias sudo "sudo -E"

functions -e exists_alias
functions -e non_exists_alias

