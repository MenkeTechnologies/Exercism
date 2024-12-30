unit module RotationalCipher;

sub caesar-cipher ( :$text, :$shift-key ) is export {
    $text.ords.map({ ord('A') <= $_ <= ord('z') ?? transform($_, $shift-key) !! $_}).chrs
}

sub transform ($ord, $shift-key) {
    my $base = $ord < ord('a') ?? ord('A') !! ord('a');
    ($ord - $base + $shift-key) % 26 + $base;
}
