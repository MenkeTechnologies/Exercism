package EliudsEggs;
use v5.40;

use Exporter qw<import>;
our @EXPORT_OK = qw<egg_count>;

use List::Util qw(sum);

sub egg_count ($n) {
    sum(split(//, sprintf("%b", $n)));
}

1;
