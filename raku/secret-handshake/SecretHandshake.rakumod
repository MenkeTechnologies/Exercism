unit module SecretHandshake;

our @dict = 'wink', 'double blink', 'close your eyes', 'jump' Z=> < 1 2 4 8 >;

sub handshake ( $number ) is export {
    my $lst = gather take .key if $number +& .value for @dict;
    $number +& 16 ?? reverse $lst !! $lst
}
