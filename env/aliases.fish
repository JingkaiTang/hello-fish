# sudo
set tmp (type sudo)
if test -n tmp 
    alias sudo "sudo -E"
end
set -e tmp

# vi
set tmp (type vi ^ /dev/null)
if test -z tmp
    alias vi "vim"
end
set -e tmp

