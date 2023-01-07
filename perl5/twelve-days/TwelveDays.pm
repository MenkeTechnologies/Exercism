package TwelveDays;
use strict;
use warnings;
use Exporter qw/import/;
our @EXPORT_OK = qw/recite/;
use constant {
    PATTERN  => 'On the %s day of Christmas my true love gave to me: %s.',
    ORDINALS => [
        qw/zeroth first second third fourth fifth sixth seventh eighth ninth tenth eleventh twelfth/
    ],
};
my @VERSES = split "\n", q(
a Partridge in a Pear Tree
two Turtle Doves
three French Hens
four Calling Birds
five Gold Rings
six Geese-a-Laying
seven Swans-a-Swimming
eight Maids-a-Milking
nine Ladies Dancing
ten Lords-a-Leaping
eleven Pipers Piping
twelve Drummers Drumming
);

sub recite {
    my ( $start, $end ) = @{ (shift) }{qw/start end/};
    join "\n", map {
        my $verse   = $_;
        my $phrases = join ', ',
          map { ( $_ == 1 && $verse != 1 ? 'and ' : '' ) . $VERSES[$_] }
          reverse 1 .. $verse;
        sprintf PATTERN, @{ (ORDINALS) }[$verse], $phrases;
    } $start .. $end;
}
1;
