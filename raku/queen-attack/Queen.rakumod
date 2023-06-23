unit class Queen;

subset Pos of Int where 0 <= * < 8;

has Pos $.row;
has Pos $.column;

method can-attack (Pos :$row, Pos :$column) {
    my $dx = ($row - $!row).abs;
    my $dy = ($column - $!column).abs;
    $dx == 0 || $dy == 0 || $dx == $dy
}
