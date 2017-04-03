#!/usr/bin/env bash

npm install -g jsfmt esformatter-braces esformatter-limit-linebreaks esformatter-quotes esformatter-semicolons
wget --no-cache -O ~/.jsfmtrc https://raw.githubusercontent.com/vovanmix/linters-formatters-analyzers/master/.jsfmtrc

gem install rubocop
wget --no-cache -O ~/.rubocop.lint.yml https://raw.githubusercontent.com/vovanmix/linters-formatters-analyzers/master/.rubocop.yml

npm install -g tslint
wget --no-cache -O ~/tslint.lint.json https://raw.githubusercontent.com/vovanmix/linters-formatters-analyzers/master/tslint.json

npm install -g jshint
wget --no-cache -O ~/.jshintrc.lint https://raw.githubusercontent.com/vovanmix/linters-formatters-analyzers/master/.jshintrc

npm install -g eslint eslint-plugin-import
wget --no-cache -O ~/.eslintrc.lint.json https://raw.githubusercontent.com/vovanmix/linters-formatters-analyzers/master/.eslintrc.json

wget --no-cache -O ~/lint https://raw.githubusercontent.com/vovanmix/linters-formatters-analyzers/master/lint
chmod +x ~/lint
