fs = require 'fs'
path = require 'path'
[directory, extension] = process.argv[2..3]

listDirectory = (directory, extension) ->
  fs.readdir directory, (err, list) ->
    if err
      throw err
    else
      files = (file for file in list when (path.extname file).toString() is ".#{extension}")
      for file in files
        console.log file
    return

listDirectory directory, extension