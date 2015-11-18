# 
# Hello Fish Init File
#

#
# Scripts Dirs
#
 
#
# Add directories here for fish scripts of $HELLO_FISH_HOME
#
# inits: initial work for some function, e.g. rvm
# env: environment variables, e.g. alias, PATH
# functions: fish functions
set fish_home_scripts_dirs inits env functions

#
# Add other path fish scripts here
#
set other_scripts_dirs

# Join two scripts dirs in one variable
set scripts_dirs $HELLO_FISH_HOME/$fish_home_scripts_dirs $other_scripts_dirs

# Load Scripts
for dir in $scripts_dirs
    for script in $dir/*.fish
        source $script
    end
end

