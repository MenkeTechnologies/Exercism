unit module Raindrops;

my %dict = 3 => 'Pling', 5 => 'Plang', 7 => 'Plong' ;

sub raindrop ($num) is export {
    my $r;
    for %dict.keys.map(*.Int).sort -> $k {
        $r ~= %dict{$k} if $num % $k == 0;
    }

    $r // $num.Str;
}
