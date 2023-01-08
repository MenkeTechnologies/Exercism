package FoodChain;
use strict;
use warnings;

use Exporter qw/import/;
our @EXPORT_OK = qw/recite/;

use constant lines => [
    {
        name   => 'fly',
        reason =>
          q/I don't know why she swallowed the fly. Perhaps she'll die./,
    },
    {
        name   => 'spider',
        flavor => 'It wriggled and jiggled and tickled inside her.',
    },
    {
        name   => 'bird',
        flavor => 'How absurd to swallow a bird!',
        reason =>
'She swallowed the bird to catch the spider that wriggled and jiggled and tickled inside her.'
    },
    { name => 'cat', flavor => 'Imagine that, to swallow a cat!', },
    { name => 'dog', flavor => 'What a hog, to swallow a dog!', },
    {
        name   => 'goat',
        flavor => 'Just opened her throat and swallowed a goat!',
    },
    { name => 'cow',   flavor   => q/I don't know how she swallowed a cow!/, },
    { name => 'horse', terminal => q/She's dead, of course!/, }
];

sub reason {
    my $verse = @_ ? shift : $_;
    lines->[$verse]{reason} // 'She swallowed the '
      . "@{[lines->[$verse]{name}]} to catch the @{[lines->[ $verse - 1 ]{name}]}.";
}

sub lyric {
    my $verse = shift;
    my @ret =
      ( 'I know an old lady who swallowed a ' . lines->[$verse]{name} . '.' );
    return ( @ret, lines->[$verse]{terminal} )
      if length lines->[$verse]{terminal};
    push @ret, lines->[$verse]{flavor} if length lines->[$verse]{flavor};
    push @ret, reason $verse ;
    push @ret, map { reason } reverse 0 .. $verse - 1;
    @ret;
}

sub recite {
    my ( $start, $end ) = @_;
    join "\n", map { lyric( $_ - 1 ), '' } $start .. $end;
}
1;
