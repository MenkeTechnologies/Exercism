package RNA;
use strict;
use warnings;
use Exporter 'import';
our @EXPORT_OK = qw(to_rna);

use constant dict => { G => "C", C => "G", T => "A", A => "U" };

sub to_rna {
    join "", map {dict->{$_}} split //, shift;
}

1
