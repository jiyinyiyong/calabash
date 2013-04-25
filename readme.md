
Calabash offsers a shortcut for bash command-lines
------

### Usage

You may install this from NPM:  

```
sudo npm install -g calabash
```

And use it togather with `node-dev` to run commands at background:  

```coffee
command = [
  'echo 1'
  'echo 2'
]

a = require('../lib/')
a.run command

command2 = """
echo 3
echo 4
"""

a.read command2
```

It's especially convenient for such a case:

```coffee
command = """
jade -o ./ -wP src/
coffee -o page/ -w src/
stylus -o page/ -w src/
cjsify -o build.js --source-map-file build.map -w coffee/
doodle page/
"""

require('calabash').read command.split('\n')
```

Bash is both a great and a mad tool.

### License

MIT