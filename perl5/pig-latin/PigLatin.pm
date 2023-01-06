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
      for lc shift;
}

sub translate {
    join ' ', map { trans $_} split ' ', shift;
}

1
