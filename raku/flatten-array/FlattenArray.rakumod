unit module FlattenArray;

sub flatten-array(@input) returns Array() is export {
    @input.map: {
	next without $_ ;
        $_.does(Positional) ??  |flatten-array($_)  !!  $_
    }
}
