unit module Accumulate;

sub accumulate ( @list, &function ) is export {
    @list>>.&function
}
