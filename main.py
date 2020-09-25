#!/usr/bin/env python3
import sys

def printStep(line):
  sum = 0
  a = line.split(':')
  loop = int(a[0].strip())
  for i in range(0,loop):
    for j in range(0,i+1):
      print(a[1].strip(), end='')
      sum += len(a[1].strip())
    print()
  return sum

if len(sys.argv) > 1:
  sys.exit(printStep(sys.argv[1]))
else:
  for line in sys.stdin:
    sys.exit(printStep(line))
