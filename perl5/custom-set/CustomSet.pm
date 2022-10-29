package CustomSet;
use v5.36;
use warnings FATAL => 'all';
use builtin qw<true false>;
no warnings qw<experimental::builtin>;
use Exporter qw<import>;
our @EXPORT_OK
    = qw<is_empty_set set_contains is_subset is_disjoint_set is_equal_set add_set_element set_intersection set_difference set_union>;

sub is_empty_set {
    my ($set) = @_;
    !$set->@*;
}
sub set_contains {
    my ($set, $element) = @_;
    my %set = map {$_ => true} $set->@*;
    $set{$element} // false;
}
sub is_subset {
    my ($subset, $set) = @_;
    my %set = map {$_ => true} $set->@*;
    my %subset = map {$_ => true} $subset->@*;
    for my $key (keys %subset) {
        return false unless $set{$key};
    }
    true;
}
sub is_disjoint_set {
    my ($set1, $set2) = @_;
    my %set1 = map {$_ => true} $set1->@*;
    my %set2 = map {$_ => true} $set2->@*;
    for my $key (keys %set1) {
        return false if $set2{$key};
    }
    true;
}
sub is_equal_set {
    my ($set1, $set2) = @_;
    return false if $set1->@* != $set2->@*;
    my %set1 = map {$_ => true} $set1->@*;
    my %set2 = map {$_ => true} $set2->@*;
    for my $key (keys %set1) {
        return false unless $set2{$key};
    }
    true;
}
sub add_set_element {
    my ($set, $element) = @_;
    [ keys { map {$_ => true} $set->@*, $element }->%* ];
}
sub set_intersection {
    my ($set1, $set2) = @_;
    my %set1 = map {$_ => true} $set1->@*;
    my %set2 = map {$_ => true} $set2->@*;
    [ grep {$set1{$_} && $set2{$_}} keys { %set1, %set2 }->%* ];
}
sub set_difference {
    my ($set1, $set2) = @_;
    my %set1 = map {$_ => true} $set1->@*;
    my %set2 = map {$_ => true} $set2->@*;
    [ grep {$set1{$_} && !$set2{$_}} keys { %set1, %set2 }->%* ];
}
sub set_union {
    my ($set1, $set2) = @_;
    [ keys { map {$_ => true} $set1->@*, $set2->@* }->%* ];
}
1;
