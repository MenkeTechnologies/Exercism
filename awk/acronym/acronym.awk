#!/usr/bin/env gawk -f

BEGIN {
    FPAT = "[[:alpha:]][[:alpha:]']*"
}
{
    r = ""
    for (i = 1; i <= NF; ++i)
        r = r substr($i, 1, 1)
    print toupper(r)
}
