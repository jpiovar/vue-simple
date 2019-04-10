#!/bin/bash
command -v nvm || {
    curl -o- https://raw.githubusercontent.com/creationix/nvm/v0.33.6/install.sh | bash
    source $HOME/.nvm/nvm.sh
}
command -v node || {
    nvm install 11.9
    nvm use 11.9
}

while true; do
    git pull origin master && {
        echo "deployment script triggered base on change => repo merged or updated"
        npm run build
    }
    sleep 120
done