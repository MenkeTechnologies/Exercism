package Bob;
use strict;
use warnings;
use Exporter 'import';
our @EXPORT_OK = qw(hey);

sub hey {
    local $_ = shift;
    s@\s+@@g;

    return "Fine. Be that way!" if !length;

    if (/[A-Z]/ && !/[a-z]/) {
        return /\?$/ ? "Calm down, I know what I'm doing!" : "Whoa, chill out!";
    }

    /\?$/ ? "Sure." : 'Whatever.';
}

1;
