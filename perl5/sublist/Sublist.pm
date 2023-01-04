package Sublist;
use strict;
use warnings;
use Exporter qw<import>;
our @EXPORT_OK = qw<compare_lists>;

sub compare_lists {
    my ($args) = @_;
    my $lstA = join ",", $args->{"listOne"}->@*;
    my $lstB = join ",", $args->{"listTwo"}->@*;

    $lstA eq $lstB ? "equal" : $lstB =~ /$lstA/ ? "sublist" :
        $lstA =~ /$lstB/ ? "superlist" : "unequal";
}
1;
