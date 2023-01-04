package KindergartenGarden;
use strict;
use warnings;

use Exporter qw<import>;
our @EXPORT_OK = qw<plants>;

use constant children => [
    qw(Alice Bob Charlie David Eve Fred Ginny Harriet Ileana Joseph Kincaid Larry)
];
use constant dict => {qw(G grass C clover R radishes V violets)};

sub plants {
    my ( $diagram, $student ) = @_;
    my @rows      = split /\n/, $diagram;
    my @positions = map { $_ * 2 } 0 .. scalar( children->@* ) - 1;
    my %child_pos;
    @child_pos{ children->@* } = @positions;
    [
        map {
            dict->{ substr( $_, $child_pos{$student}, 1 ) },
              dict->{ substr( $_, $child_pos{$student} + 1, 1 ) }
        } @rows
    ];
}
1;
