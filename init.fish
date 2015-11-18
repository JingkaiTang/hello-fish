# 
# Hello Fish Init File
#

#
# Scripts Dirs
#
 
#
# Add directories here for fish scripts of $HELLO_FISH_HOME
#
# env: environment variables, e.g. alias, PATH
# functions: fish functions
set home_scripts_dirs env functions

#
# Add other path fish scripts here
#
set other_scripts_dirs

# Join two scripts dirs into one variable
set scripts_dirs $HELLO_FISH_HOME/$home_scripts_dirs $other_scripts_dirs

# Load Scripts
for dir in $scripts_dirs
    for script in $dir/*.fish
        source $script
    end
end

#
# Init Scripts for after all settings
#

#
# Add directories here for fish initial scripts of $HELLO_FISH_HOME
#
# inits: initial work for some function, e.g. rvm
set home_inits_dirs inits

#
# Add directories here for other path fish initial scripts
#
set other_inits_dirs

# Join two inits dirs into one variable
set inits_dirs $HELLO_FISH_HOME/$home_inits_dirs $other_inits_dirs

# Load Scripts
for dir in $inits_dirs
    for script in $dir/*.fish
        source $script
    end
end

