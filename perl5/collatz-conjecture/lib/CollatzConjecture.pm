package CollatzConjecture;
use v5.40;
use Exporter qw<import>;
our @EXPORT_OK = qw<steps>;
sub steps ($n) {
    die 'Only positive integers are allowed' if $n < 1;
    my $cnt = 0;
    while ($n > 1) {
        $n = $n % 2 == 0 ? $n / 2 : 3 * $n + 1;
        ++$cnt;
    }
    $cnt;
}

