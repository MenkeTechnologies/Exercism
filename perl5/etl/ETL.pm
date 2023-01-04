package ETL;
use strict;
use warnings;
use Exporter qw<import>;
our @EXPORT_OK = qw<transform>;

sub transform {
    my %map = shift->%*;
    (
        {
            map {
                my $score = $_;
                map { lc, $score } $map{$score}->@*
            } keys %map
        }
    );
}

1
