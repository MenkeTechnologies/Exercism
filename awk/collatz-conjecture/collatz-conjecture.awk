BEGIN { cnt = 0 }
{
    if ($0 < 1) { print "Error: Only positive numbers are allowed"; exit 1 }

    while ($0 > 1) {
        if ($0 % 2 == 0) $0 /= 2; else $0 = 3 * $0 + 1
        ++cnt
    }
    print cnt
}

