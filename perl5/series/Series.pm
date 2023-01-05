package Series;
use strict;
use warnings;
use Exporter qw/import/;
our @EXPORT_OK = qw/slices/;

sub slices {
    my $args   = shift;
    my $series = $args->{series};
    my $len    = $args->{sliceLength};
    die "slice length cannot be zero"     if $len == 0;
    die "slice length cannot be negative" if $len < 0;
    die "series cannot be empty"          if $series eq "";
    die "slice length cannot be greater than series length"
      if $len > length $series;

    [ map { substr( $series, $_, $len ) } 0 .. ( length $series ) - $len ];
}
1;
