unit class Bob;

method hey ($_ is copy) {

    s:g@\s+@@;

    return "Fine. Be that way!" if !$_.chars;

    if (/<upper>/ && !/<lower>/) {

        return "Calm down, I know what I'm doing!" if /\?$/;

        return "Whoa, chill out!"

    }

    return "Sure." if /\?$/;

    'Whatever.'
}
