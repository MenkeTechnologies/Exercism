package Bob;
use strict;
use warnings;
use Exporter qw/import/;
our @EXPORT_OK = qw/hey/;

sub hey {
    local $_ = shift;
    s@\s+@@g;

    return "Fine. Be that way!" if !length;

    do {
        return /\?$/ ? "Calm down, I know what I'm doing!" : "Whoa, chill out!";
    } if /[A-Z]/ && !/[a-z]/;

    /\?$/ ? "Sure." : 'Whatever.';
}

1;
