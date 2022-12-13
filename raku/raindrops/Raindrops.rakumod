unit module Raindrops;

my %dict = 3 => 'Pling', 5 => 'Plang', 7 => 'Plong' ;

sub raindrop ($num) is export {
    my $r;
    for %dict.keys.map(*.Int).sort {
        $r ~= %dict{$_} if $num % $_ == 0;
    }

    $r // $num.Str;
}
