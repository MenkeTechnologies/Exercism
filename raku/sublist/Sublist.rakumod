unit module Sublist;

sub compare-lists ( @a, @b ) is export {
    my $s1 = @a.join(",") ~ ",";
    my $s2 = @b.join(",") ~ ",";
    $s1 eq $s2 ?? 'equal' !! $s2.contains($s1) ?? 'sublist' !! $s1.contains($s2) ?? 'superlist' !! 'unequal'

}
