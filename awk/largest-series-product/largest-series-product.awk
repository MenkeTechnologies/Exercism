BEGIN { FS = ","; MAX = 0}

$2 > length($1) { print "span must be smaller than string length"; exit(1) }
!/^[0-9]+,/ { print "input must only contain digits"; exit(2) }
$2 < 0 { print "span must not be negative"; exit(3) }

{
    for(i = 1; i <= length($1) - $2 + 1; ++i) {
        split(substr($0, i, $2), series, //);
        product = 1;
        for (j = 1; j <= $2; ++j) product *= series[j]
        if (product > MAX) MAX = product
    }
    print MAX
}

