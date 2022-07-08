#!/usr/bin/env gawk -f

BEGIN { FS = "[-:T ]" }

NF == 3 { datespec = $1 " " $2 " " $3 " 0 0 0" }
NF == 6 { datespec = $1 " " $2 " " $3 " " $4 " " $5 " " $6 }

{
    now = mktime(datespec, 1)
    print strftime("%FT%T", now + 1e9, 1)
}

