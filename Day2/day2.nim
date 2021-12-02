import strscans, seqUtils

var x, y1, y2: int = 0

for it in "input.txt".lines.toSeq.mapIt(it.scanTuple("$w $i")):
    case it[1]:
        of "forward":
            x += it[2]
            y2 += it[2] * y1
        of "up":
            y1 -= it[2]
        of "down":
            y1 += it[2]

echo x * y1, "\n", x * y2