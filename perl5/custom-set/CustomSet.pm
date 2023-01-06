package CustomSet;
use strict;
use warnings;
use Exporter qw/import/;
our @EXPORT_OK =
  qw/is_empty_set set_contains is_subset is_disjoint_set is_equal_set add_set_element set_intersection set_difference set_union/;

sub is_empty_set {
    my $set = shift;
    !$set->@*;
}

sub set_contains {
    my ( $set, $element ) = @_;
    my %set = map { $_ => 1 } $set->@*;
    $set{$element} // 0;
}

sub is_subset {
    my ( $subset, $set ) = @_;
    my %set    = map { $_ => 1 } $set->@*;
    my %subset = map { $_ => 1 } $subset->@*;
    do { return 0 if !$set{$_} }
      for keys %subset;
    1;
}

sub is_disjoint_set {
    my ( $set1, $set2 ) = @_;
    my %set1 = map { $_ => 1 } $set1->@*;
    my %set2 = map { $_ => 1 } $set2->@*;
    do { return 0 if $set2{$_} }
      for keys %set1;
    1;
}

sub is_equal_set {
    my ( $set1, $set2 ) = @_;
    return 0 if $set1->@* != $set2->@*;
    my %set1 = map { $_ => 1 } $set1->@*;
    my %set2 = map { $_ => 1 } $set2->@*;
    do { return 0 if !$set2{$_} }
      for keys %set1;
    1;
}

sub add_set_element {
    my ( $set, $element ) = @_;
    [ keys { map { $_ => 1 } $set->@*, $element }->%* ];
}

sub set_intersection {
    my ( $set1, $set2 ) = @_;
    my %set1 = map { $_ => 1 } $set1->@*;
    my %set2 = map { $_ => 1 } $set2->@*;
    [ grep { $set1{$_} && $set2{$_} } keys { %set1, %set2 }->%* ];
}

sub set_difference {
    my ( $set1, $set2 ) = @_;
    my %set1 = map { $_ => 1 } $set1->@*;
    my %set2 = map { $_ => 1 } $set2->@*;
    [ grep { $set1{$_} && !$set2{$_} } keys { %set1, %set2 }->%* ];
}

sub set_union {
    my ( $set1, $set2 ) = @_;
    [ keys { map { $_ => 1 } $set1->@*, $set2->@* }->%* ];
}
1;
