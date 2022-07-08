#!/usr/bin/env gawk -f

BEGIN {
    FS = ""
    dict["G"] = "C"
    dict["C"] = "G"
    dict["A"] = "U"
    dict["T"] = "A"
    r = ""
}

{
    for (i = 1; i <= NF; ++i) {
        if ($i in dict) {
            r = r dict[$i]
        } else {
            print("Invalid nucleotide detected.")
            exit(1)
        }
    }
    print(r)
}
