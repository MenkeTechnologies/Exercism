unit module Luhn;

sub is-luhn-valid ($input is copy) is export {

    $input .= trans: ' ' => '';

    return False if $input.chars < 2 or $input ~~ /\D/;

    (gather for $input.comb.reverse -> $a, $b? {
        take $a.Int ;
        with $b {
            when '9' { take 9 }
            default  { take 2 * +$_ mod 9 }
        }
    }).sum %% 10
}
