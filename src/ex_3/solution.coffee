fs = require 'fs'

lineCount = (file) ->
  data = fs.readFileSync file
  data.toString().split('\n').length - 1

console.log lineCount process.argv[2]