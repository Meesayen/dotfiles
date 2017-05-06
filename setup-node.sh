#!/usr/bin/env bash

# Install latest nvm
curl -o- https://raw.githubusercontent.com/creationix/nvm/v0.33.2/install.sh | bash

nvm install 7
nvm alias default 7
nvm use 7

npm install now
npm install np
npm install npm
npm install pure-prompt
npm install speed-test
npm install vue-cli
