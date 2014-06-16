fs = require 'fs'

lineCount = (file) ->
  fs.readFile file, (err, data) ->
    if err
      throw err
    else
      console.log data.toString().split('\n').length - 1

lineCount process.argv[2]