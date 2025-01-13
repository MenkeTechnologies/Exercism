BEGIN { FPAT="[[:digit:]]" }

/[^0-9[:blank:]]/ || NF < 2 {print "false"; next}
{
    for(i = NF; i >= 1; --i) {
        if ((NF - i) % 2 == 1) {
           $i *= 2; 
        }
        sum += $i > 9 ? $i - 9 : $i;
    }
    print sum % 10 == 0 ? "true" : "false";
}
