package DndCharacter;
use v5.40;
use Moo;
use POSIX qw/floor/;
use List::Util qw/sum/;

has strength => (is => 'rwp', default => __PACKAGE__->ability);
has dexterity => (is => 'rwp', default => __PACKAGE__->ability);
has constitution => (is => 'rwp', default => __PACKAGE__->ability);
has intelligence => (is => 'rwp', default => __PACKAGE__->ability);
has wisdom => (is => 'rwp', default => __PACKAGE__->ability);
has charisma => (is => 'rwp', default => __PACKAGE__->ability);
has hitpoints => (is => 'rwp', builder => sub ($self) {10 + __PACKAGE__->modifier($self->constitution)});

sub ability ($class) {
    sum((sort map {1 + int rand 6} 1..4)[1..4])
}
sub modifier ($class, $score) {
    floor(($score - 10) / 2);
}

1