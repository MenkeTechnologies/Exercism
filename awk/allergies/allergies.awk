#!/usr/bin/env gawk -f

BEGIN {
    n = split("eggs peanuts shellfish strawberries tomatoes chocolate pollen cats", nr2str, " ")
    for (i = 1; i <= n; i++) str2nr[nr2str[i]] = 2^(i - 1)
    FS = OFS = ","
}

function checkitem(num, bit){ return and(num, bit) > 0 }

$2 == "list" {
            for (i = 1; i <= n; i++)
                if (checkitem(str2nr[nr2str[i]], $1))
                    list = list "," nr2str[i]
            result = substr(list,2)
}

$2 == "allergic_to" { result = checkitem(str2nr[$3], $1) ? "true" : "false" }

END { print result}

