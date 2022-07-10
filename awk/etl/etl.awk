#!/usr/bin/env gawk -f

{
    gsub(/[,":]+/, " ")
    $0 = tolower($0)
    for (i = 2; i <= NF; i++)
        dict[$i] = $1
}

END {
    PROCINFO["sorted_in"] = "@ind_str_asc"
    for (letter in dict)
        printf "%s,%d\n", letter, dict[letter]
}

