#!/usr/bin/env gawk -f

{
    sum = 0
    for (i = 1; i < limit; ++i)
        for (j = 1; j <= NF; ++j)
            if ($j > 0 && i % $j == 0) {
                sum += i
                break
            }
    print(sum)
}


