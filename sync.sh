#!/usr/bin/env bash

cd "$(dirname "${BASH_SOURCE}")";

git pull origin master;

sh brew.sh;

if ! grep '/usr/local/bin/bash' /etc/shells; then
  echo '/usr/local/bin/bash' | sudo tee -a /etc/shells;
  chsh -s /usr/local/bin/bash;
fi;

function doIt() {

	rsync --exclude ".git/" --exclude ".DS_Store" --exclude "sync.sh" \
		--exclude "README.md" --exclude "setup.sh" --exclude "LICENSE-MIT.txt" \
		--exclude ".osx" --exclude "brew.sh" --exclude "init/" --exclude "bin/" \
		-avh --no-perms . ~;
	source ~/.bash_profile;
}

if [ "$1" == "--force" -o "$1" == "-f" ]; then
	doIt;
else
	read -p "This may overwrite existing files in your home directory. Are you sure? (y/n) " -n 1;
	echo "";
	if [[ $REPLY =~ ^[Yy]$ ]]; then
		doIt;
	fi;
fi;
unset doIt;

echo "\n\nDone. Note that some of these changes require a logout/restart to take effect."
