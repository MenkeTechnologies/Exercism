package MatchingBrackets;

use v5.40;
use Exporter qw<import>;
our @EXPORT_OK = qw<has_matching_brackets>;

use constant DICT => {
    '[' => ']',
    '(' => ')',
    '{' => '}'
};

sub has_matching_brackets ($s) {
    my @stk;
     do {
        if (/[[({]/) {
            push @stk, $_;
        } elsif (/[])}]/) {
            return 0 if !@stk or $_ ne DICT->{pop @stk};
        }
    } for split //, $s;

    !@stk;
}

1;
