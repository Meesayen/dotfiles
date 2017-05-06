#!/usr/bin/env bash

if command -v apm >/dev/null 2>&1; then
  apm install Stylus
  apm install atom-beautify
  apm install atom-ternjs
  apm install autocomplete-modules
  apm install base16-syntax
  apm install busy-signal
  apm install emmet
  apm install file-icons
  apm install flow-ide
  apm install intentions
  apm install language-babel
  apm install language-elm
  apm install language-polymer
  apm install language-postcss
  apm install language-pug
  apm install language-vue
  apm install linter
  apm install linter-elm-make
  apm install linter-eslint
  apm install linter-jsonlint
  apm install linter-stylelint
  apm install linter-ui-default
  apm install linter-xo
  apm install one-dark-vivid-syntax
  apm install polymer-ide
  apm install react
else
  echo "Atom or its 'apm' shell module not found."
fi
