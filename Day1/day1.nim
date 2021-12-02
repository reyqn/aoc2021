import sequtils, strutils, sugar

proc calc(numbers: seq[int]): int = 
    numbers[1..^1].pairs.countIt(it.val > numbers[it.key])

let p1 = "input.txt".lines.toSeq.map(parseInt)
let p2 = collect(for it in p1[2..^1].pairs: it.val + p1[it.key] + p1[it.key + 1])
echo calc(p1), " \n", calc(p2)