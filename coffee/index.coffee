
{spawn} = require "child_process"

echo = (child) ->
  child.stderr.pipe process.stderr
  child.stdout.pipe process.stdout

split = (string) -> string.split " "
filled = (string) -> string.length > 0

exports.do = (_, queue...) ->
  queue.map(split).forEach (array, index) ->
    console.log '➤➤', queue[index]
    echo (spawn array[0], array[1..])