constant %numbers =
    0..10
    Z=>
    <no one two three four five six seven eight nine ten>;

sub pluralize ( $num ) {  $num == 1 ?? '' !! 's'  }

sub sing ( :$bottles, :$verses ) is export {
    gather for $bottles ...^ $bottles - $verses
    -> $stanza {
        take (
            sprintf "%s green bottle%s hanging on the wall,\n",
            %numbers{ $stanza }.tc, pluralize $stanza
        ) x 2
        ~
        "And if one green bottle should accidentally fall,\n"
        ~
        sprintf "There'll be %s green bottle%s hanging on the wall.",
        %numbers{ .pred }, pluralize .pred with $stanza
    }.join: "\n\n"

