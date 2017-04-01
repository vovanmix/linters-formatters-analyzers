# Locat set up
```sh

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
echo 'alias lint="~/lint"' >> ~/.zshrc
OR
echo 'alias lint="~/lint"' >> ~/.bash_profile
```

# Watcher script Rubymine for formatting
```
~/.nvm/versions/node/v5.5.0/bin/jsfmt
-w $FilePath$

~/.rbenv/shims/rubocop
-a $FilePath$ --config ~/.rubocop.lint.yml
```

# TODO:
```sh
git config pre-commit.checks "[whitespace, jshint, debugger, rubocop]"

fork https://github.com/jish/pre-commit
and add tslint and htmlhint plugins there

or customize this:
https://gist.github.com/skanev/9d4bec97d5a6825eaaf6

```

# Formatting
## Ruby
```
rubocop -a file_name.rb
```

## Javascript
http://lloiser.github.io/esformatter-visualize/
```
node_modules/.bin/jsfmt ./js/*.js -w
or
npm run format
or
jsfmt -w ./js/*.js
```

## TypeScript
```
node_modules/.bin/tsfmt ./js/*.ts -r
or
npm run format
```

## Html / CSS / Less
```
./node_modules/.bin/js-beautify html/*.html -r
beautified html/example.html
```

# Linting
## Html
```
node_modules/.bin/htmlhint --config htmlhint.conf
```
