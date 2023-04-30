unit class Darts;

has Rat() ( $.x, $.y );

method score ( $_ = sqrt $.x ** 2 + $.y ** 2 ) {
    when 0  ..  1 { 10 }
    when 1 ^..  5 {  5 }
    when 5 ^.. 10 {  1 }
}
