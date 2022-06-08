unit class Robot;

our $test-all-names = False;

has Str:D $.name is rw = ["A".."Z"].pick(2).join ~ ["0".."9"].pick(3).join;

method reset-name { ++$.name }
