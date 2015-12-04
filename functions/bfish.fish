# bfish function
function bfish -d "oh-my-fish theme bobthefish helpful function"
    for arg in $argv
        if test $arg = "ruby"
            if test -z "$theme_display_ruby"
                set -g theme_display_ruby yes
            else if test $theme_display_ruby = "yes"
                set -g theme_display_ruby no
            else
                set -g theme_display_ruby yes
            end
        else if test $arg = "user"
            if test -z "$theme_display_user"
                set -g theme_display_user yes
            else if test $theme_display_user = "yes"
                set -g theme_display_user no
            else
                set -g theme_display_user yes
            end
        end
    end
    return 0
end
