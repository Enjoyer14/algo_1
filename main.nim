# импортируйте нужные библиотеки (советуем strutils и sequtils)
import strutils, sequtils

proc main() =
  let n = stdin.readLine.parseInt
  let points = stdin.readLine.split(" ").mapIt(it.parseInt)
  let k = stdin.readLine.parseInt

  var left = 0
  var right = points.high
  var summa = 0

  while(left < right):
    summa = points[left] + points[right]
    if(summa == k):
      stdout.writeLine(points[left], " ", points[right])
      return
    elif(summa > k):
      right -= 1
    else:
      left += 1
  stdout.writeLine("None")


main()
