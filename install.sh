#!/usr/bin/env bash

npm install -g jsfmt esformatter-braces esformatter-limit-linebreaks esformatter-quotes esformatter-semicolons
wget -O ~/.jsfmtrc https://raw.githubusercontent.com/vovanmix/linters-formatters-analyzers/master/.jsfmtrc

gem install rubocop
wget -O ~/.rubocop.lint.yml https://raw.githubusercontent.com/vovanmix/linters-formatters-analyzers/master/.rubocop.yml

npm install -g tslint
wget -O ~/tslint.lint.json https://raw.githubusercontent.com/vovanmix/linters-formatters-analyzers/master/tslint.json

npm install -g jshint
wget -O ~/.jshintrc.lint https://raw.githubusercontent.com/vovanmix/linters-formatters-analyzers/master/.jshintrc

wget -P ~/ https://raw.githubusercontent.com/vovanmix/linters-formatters-analyzers/master/lint
chmod +x ~/lint
