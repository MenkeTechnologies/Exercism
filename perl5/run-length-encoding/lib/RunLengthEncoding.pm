package RunLengthEncoding;

use v5.40;

use Exporter qw<import>;
our @EXPORT_OK = qw<encode decode>;

sub encode ($s) {
    $s =~ s/(\D)\1+/length($&) . $1/egr;
}
sub decode ($s) {
    $s =~ s/(\d+)(\D)/$2 x $1/egr;
}

