#!/usr/bin/env bash

cd "$(dirname "${BASH_SOURCE}")";

git pull origin master;

sh brew.sh;

if ! grep '/usr/local/bin/bash' /etc/shells; then
  echo '/usr/local/bin/bash' | sudo tee -a /etc/shells;
  chsh -s /usr/local/bin/bash;
fi;

# Install latest nvm
curl -o- https://raw.githubusercontent.com/creationix/nvm/v0.31.0/install.sh | bash

sh .osx;

echo "\n\nDone. Note that some of these changes require a logout/restart to take effect."
echo "Remember to:\n"
echo "  nvm install 5"
echo "  nvm alias default 5"
echo "  npm i -g npm"
