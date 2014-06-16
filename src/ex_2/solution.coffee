addArgs = ->
  args = process.argv[2..]
  result = 0
  for arg in args
    result += parseInt arg
  result

console.log addArgs()