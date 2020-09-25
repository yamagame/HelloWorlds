def printStep(line)
  sum = 0
  words = line.split(':')
  if words.length > 1 then
    lp = words[0].to_i
    for i in 1..lp do
      for j in 1..i do
        print words[1].strip
        sum += words[1].strip.length
      end
      puts ""
    end
  end
  return sum
end

if ARGV.length > 0 then
  exit(printStep(ARGV[0]))
else
  line = $stdin.gets
  exit(printStep(line))
end
