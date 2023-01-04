package KindergartenGarden;
use strict;
use warnings;

use Exporter qw<import>;
our @EXPORT_OK = qw<plants>;

my @children =
  qw(Alice Bob Charlie David Eve Fred Ginny Harriet Ileana Joseph Kincaid Larry);
my %plants = qw(G grass C clover R radishes V violets);

sub plants {
    my ($input) = @_;

    my $diagram   = $input->{diagram};
    my $student   = $input->{student};
    my @rows      = split /\n/, $diagram;
    my @positions = map { $_ * 2 } 0 .. scalar(@children) - 1;
    my %child_pos;
    @child_pos{@children} = @positions;

    my @student_plants;

    do {
        push @student_plants, $plants{ substr( $_, $child_pos{$student}, 1 ) };
        push @student_plants,
          $plants{ substr( $_, $child_pos{$student} + 1, 1 ) };
      }
      for @rows;
    return \@student_plants;
}
1;
