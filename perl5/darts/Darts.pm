package Darts;
use Exporter qw<import>;
our @EXPORT_OK = qw<score_dart>;
sub score_dart {
    my $dist = ($_[0] * $_[0] + $_[1] * $_[1]) ** 0.5;
    $dist > 10 ? 0 : $dist > 5 ? 1 : $dist > 1 ? 5 : 10
}

