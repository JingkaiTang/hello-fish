# bfish_sets
set bfish_sets "theme_display_ruby" "theme_display_user"

# _bfish_single_function
function _bfish_single_function
    if test -z $argv[1]
        return
    end
    
    set bfish_key $argv[1]
    
    eval "
        if test -z \"$$bfish_key\"
            set -g $bfish_key yes
        else if test \"$$bfish_key\" = \"yes\"
            set -g $bfish_key no
        else 
            set -g $bfish_key yes
        end
    "
end
    
# bfish function
function bfish -d "oh-my-fish theme bobthefish helpful function"
    for arg in $argv
        switch $arg
            case "ruby"
                _bfish_single_function "theme_display_ruby"
            case "user"
                _bfish_single_function "theme_display_user"
        end
    end
    return 0
end

