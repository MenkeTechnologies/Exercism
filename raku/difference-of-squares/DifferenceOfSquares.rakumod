unit module DifferenceOfSquares;

sub square-of-sum ($number) is export {
    (1..$number).sum ** 2; 
}

sub sum-of-squares ($number) is export {
    (1..$number).map({ $_ * $_}).sum;
}

sub difference-of-squares ($number) is export {
    square-of-sum($number) - sum-of-squares($number);
}
