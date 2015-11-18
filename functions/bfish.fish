function bfish -d "oh-my-fish theme bobthefish helpful function"
    if test $argv[1] = "ruby"
        if test $theme_display_ruby = "yes"
            set -g theme_display_ruby no
        else
            set -g theme_display_ruby yes
        end
    end
    return 0
end
