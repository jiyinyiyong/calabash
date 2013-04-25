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