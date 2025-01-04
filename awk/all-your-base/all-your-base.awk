BEGIN {  if (ibase < 2 || obase < 2) { print "base failure"; exit 1 } }
NF==0 { print ""; exit 0 }

{
    for (i=1; i<=NF; ++i) {
        if ($i < 0 || ibase <= $i) { print "digit failure"; exit 2 }
        acc = acc * ibase + $i
    }
    if (acc == 0) { print "0"; exit 0 }
    while (acc) {
        answer = acc % obase " " answer;
        acc = int(acc / obase)
    }
    print substr(answer, 1, length(answer) - 1)
}
