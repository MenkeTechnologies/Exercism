package PigLatin;
use strict;
use warnings;
use Exporter qw/import/;
our @EXPORT_OK = qw/translate/;

sub trans {

    do {
        /^([aeiou] | xr | yt)/x && return "${_}ay";
        /^([^aeiouy]+)  (y.+)/x && return "$2$1ay";
        /^([^aeiou]*qu) (.+)/x  && return "$2$1ay";
        /^([^aeiou]+)   (.+)/x  && return "$2$1ay";

        die "Not translated: $_";
      }
      for lc @_ ? shift : $_;
}

sub translate {
    join ' ', map { trans } split ' ', shift;
}

1
