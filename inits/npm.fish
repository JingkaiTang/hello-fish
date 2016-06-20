# NPM packages in homedir
set -xg NPM_PACKAGES "$HOME/.npm-packages"

# Tell our environment about user-installed node tools
set -xg PATH $PATH "$NPM_PACKAGES/bin"

# Tell Node about these packages
set -xg NODE_PATH "$NPM_PACKAGES/lib/node_modules"
