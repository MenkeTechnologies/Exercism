unit module PerfectNumbers;

enum AliquotSumType is export (
    :Deficient(Less),
    :Perfect(Same),
    :Abundant(More),
);

sub aliquot-sum-type ( $n where 1..* --> AliquotSumType(Order) ) is export {
    (1..$n-1).grep($n %% *).sum <=> $n
}
