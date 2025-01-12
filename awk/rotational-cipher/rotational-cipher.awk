@load "ordchr"
{
    for (i = 1; i <= length($0); ++i) {
        c = substr($0, i, 1)
        if (c ~ /[[:alpha:]]/) {
            base = c ~ /[a-z]/ ? ord("a") : ord("A")
            printf chr(base + (ord(c) - base + distance) % 26)
        } else printf c
    }
}
