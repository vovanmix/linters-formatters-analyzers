# Local set up
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

# Run linting before commit
it will lint only changed files
```
lint
```

# IDE built in linting
Eslint is used generally for formatting. Tslint - for Typescript-specific settings.
### Rubymine
#### JSHint
`Settings -> Languages And Frameworks -> JavaScript -> Code Quality Tools -> JSHint`

Enable

Use Config Files

Custom configuration file: `/Users/xxx/.jshintrc.lint`
#### EsLint
`Settings -> Languages And Frameworks -> JavaScript -> Code Quality Tools -> ESLint`
Disable (the built in linter)

Install the `ESLint` plugin.

`Settings -> Other Settings -> ESLint`

Node Interpreter: `~/.nvm/versions/node/v5.5.0/bin/node`

ESLint bin: `/~/.nvm/versions/node/v5.5.0/bin/eslint`

Custom configuration file: `~/.eslintrc.lint.json`

Extensions: `.ts,.js`
#### TsLint
`Settings -> Languages And Frameworks -> TypeScript -> TSLint`

Enable

Node Interpreter: `~/.nvm/versions/node/v5.5.0/bin/node`

TSLint package: `~/.nvm/versions/node/v5.5.0/lib/node_modules/tslint`

Configuration file: `/~/tslint.lint.json`

#### Rubocop
I wasn't able to make it work with config file out of the project directory. The only way for now is to temporary copy the config file from the user dir to the project dir and reset it afterwards.
```
cp ~/.rubocop.lint.yml ~/project-dir/.rubocop.yml
```
And enable RubyMine built in rubocop linting.

# Manually auto format files
We need some tweaks because linter libs are currently installed globally and we don't want to mess with the existing config:
## Javascript and TypeScript
Here we need to look up the path to global packages and use it. The example shows setup using nvm.
```
> which node
  /Users/xxx/.nvm/versions/node/v5.5.0/bin/node
> /Users/xxx/.nvm/versions/node/v5.5.0/bin/eslint -c ~/.eslintrc.lint.json --fix path-to-file.js
> /Users/xxx/.nvm/versions/node/v5.5.0/bin/tslint -c ~/tslint.lint.json --fix path-to-file.js
```
## Ruby
Here we need to use global set up of Rubocop
```
> which rubocop
  /Users/xxx/.rbenv/shims/rubocop
> /Users/xxx/.rbenv/shims/rubocop --config ~/.rubocop.lint.yml -a path-to-file.rb
```

# External tools for RubyMine for manual formatting
Set up them in settings -> Tools -> External Tools using settings described below to fill in `Name`, `Program`, `Parameters`, `Working dir` fields respectively.

Run them with `cmd + shift + A` and typing the first chars of the name.
## Eslint xformat
```
/Users/xxx/.nvm/versions/node/v5.5.0/bin/eslint
-c /Users/xxx/.eslintrc.lint.json --fix $FilePath$
$ProjectFileDir$
```
## Rubocop xformat
```
/Users/xxx/.rbenv/shims/rubocop
--config /Users/xxx/.rubocop.lint.yml -a $FilePath$
$ProjectFileDir$
```
## Tslint xformat
```
/Users/xxx/.nvm/versions/node/v5.5.0/bin/tslint
-c /Users/xxx/tslint.lint.json --fix $FilePath$
$ProjectFileDir$
```

# Watcher script Rubymine for auto formatting (this is unstable!)
Using `File Watchers` plugin.

Similar to manual running formatting scripts described above, we need to specify the correct path to the executable.
```
~/.nvm/versions/node/v5.5.0/bin/eslint
--fix $FilePath$ -c ~/.eslintrc.lint.json

~/.nvm/versions/node/v5.5.0/bin/eslint
--fix $FilePath$ -c /Users/xxx/.eslintrc.lint.json

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
