package Triplet;
use strict;
use warnings;
use Exporter qw/import/;
our @EXPORT_OK = qw/new is_pythagorean sum product products/;
use List::Util qw/first reduce/;

sub new {
    my ($class, @raw) = @_;
    my $opts = first {ref eq "HASH"} @raw;
    my $nums = [ grep {ref ne "HASH"} @raw ];
    my $self = { opts => $opts, nums => $nums };
    bless $self, $class;
}
sub is_pythagorean {
    my @sq = map {$_ ** 2} shift->get_nums;
    $sq[0] + $sq[1] == $sq[2]
}
sub sum { List::Util::sum shift->get_nums }

sub product { reduce {$a * $b} 1, shift->get_nums; }

sub get_nums { shift->{nums}->@*; }

sub set_nums {
    my $self = shift;
    $self->{nums} = [ @_ ];
}

sub map_product {
    my ($self, $a1, $max, $sum) = @_;

    for my $b1 ($a1 .. $max) {
        my $b2 = sqrt($a1 ** 2 + $b1 ** 2);
        my $sum2 = $sum || $a1 + $b1 + $b2;
        if ($b2 == int($b2) && $b2 <= $max && $a1 + $b1 + $b2 == $sum2) {
            $self->set_nums($a1, $b1, $b2);
            if ($self->is_pythagorean) {
                return $self->product;
            }
        }
    }
}
sub products {
    my $self = shift;
    my $min = $self->{opts}{min_factor} || 1;
    my $max = $self->{opts}{max_factor};
    my $sum = $self->{opts}{sum};

    [ grep {length $_} map {$self->map_product($_, $max, $sum)} $min .. $max ]
}
1;
