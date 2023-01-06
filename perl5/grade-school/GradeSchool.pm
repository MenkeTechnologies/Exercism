package GradeSchool;
use strict;
use warnings;
use Exporter qw/import/;
our @EXPORT_OK = qw/roster/;
use List::Util qw/uniq/;

sub new {
    my ($class) = @_;
    bless { roster => {} }, $class;
}

sub add {
    my ( $self, $student, $grade ) = @_;
    $self->{roster}{$student} = $grade if !$self->{roster}{$student};
}

sub roster {
    my ( $self, $grade ) = @_;
    my @grades = uniq( $grade ? $grade : sort values $self->{roster}->%* );
    [
        map {
            my $gr = $_;
            sort
              grep { $self->{roster}{$_} == $gr }
              keys $self->{roster}->%*;
        } @grades
    ];
}

1

