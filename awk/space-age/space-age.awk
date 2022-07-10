#!/usr/bin/env gawk -f

BEGIN {
    periods["Mercury"] = 0.2408467
    periods["Venus"] = 0.61519726
    periods["Earth"] = 1
    periods["Mars"] = 1.8808158 
    periods["Jupiter"] = 11.862615 
    periods["Saturn"] = 29.447498 
    periods["Uranus"] = 84.016846 
    periods["Neptune"] = 164.79132
    SPY = 60 * 60 * 24 * 365.25
}

{
    if (!periods[$1]) { print "not a planet"; exit 1}
    printf "%.2f", $2 /periods[$1] / SPY
}
