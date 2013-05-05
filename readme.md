
Calabash offsers a shortcut for bash command-lines
------

### Usage

You may install this from NPM:  

```
sudo npm install -g calabash
```

And use it togather with `node-dev` to run commands at background:  

```coffee
require("calabash").do "first parameter as comment",
  "pkill -f doodle"
  "coffee -o lib/ -wbc coffee/"
  "jade -o build/ -wP layout/"
  "style -o build/ -w layout/"
  "node-dev server.coffee"
  "doodle build/"
```

Bash is both a great and a mad tool.

### License

MIT