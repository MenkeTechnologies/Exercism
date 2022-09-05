package ETL;
use strict;
use warnings;
use Exporter qw<import>;
our @EXPORT_OK = qw<transform>;

sub transform {
    my ($data) = @_;
    my %map = %$data;
    my %out;

    for my $point ( keys %map ) {
        my @letters = @{ $map{$point} };
        $out{ lc $_ } = $point for @letters;

    }

    return \%out;
}

1;
