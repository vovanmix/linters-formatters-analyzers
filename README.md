# Locat set up
```sh
wget --no-cache --cache=off -O ~/lint_install.sh https://raw.githubusercontent.com/vovanmix/linters-formatters-analyzers/master/install.sh

chmod +x ~/lint_install.sh

~/lint_install.sh

rm ~/lint_install.sh

echo 'alias lint="~/lint"' >> ~/.zshrc
source ~/.zshrc
OR
echo 'alias lint="~/lint"' >> ~/.bash_profile
source ~/.bash_profile
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
eslint -c config --fix js/*
or
node_modules/.bin/jsfmt ./js/*.js -w
or
npm run format
or
jsfmt -w ./js/*.js
```

## TypeScript
```
eslint -c config --fix js/*
or
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
## Javascript
Jshint for code quality, eslint for code style
```
./node_modules/.bin/eslint -c <path-to-config> --fix <path-to-current-file>
./node_modules/.bin/eslint --fix js/*
```
