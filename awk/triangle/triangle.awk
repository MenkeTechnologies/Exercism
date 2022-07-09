#!/usr/bin/env gawk -f

$1 + $2 < $3 || $1 + $3 < $2 || $2 + $3 < $1 { print "false"; next }

{
    delete sides
    for (i = 1; i <= 3; ++i) sides[$i] = 1
    uniq = length(sides)
}
uniq == 1 && $1 == 0 { print "false"; next }
type == "equilateral" { print uniq == 1 ? "true" : "false" }
type == "isosceles" { print uniq <= 2 ? "true" : "false" }
type == "scalene" { print uniq == 3 ? "true" : "false" }
