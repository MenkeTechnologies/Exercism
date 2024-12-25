unit module EliudsEggs;

sub count-eggs ($s) is export {
    $s.base(2).comb('1').elems
}
