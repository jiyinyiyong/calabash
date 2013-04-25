
Calabash offsers a shortcut for bash command-lines
------

Runs command-lines for development:

```coffee
command = """
jade -o ./ -wP src/
coffee -o page/ -w src/
stylus -o page/ -w src/
cjsify -o build.js --source-map-file build.map -w coffee/
doodle page/
"""

require('calabash').run command.split('\n')

```