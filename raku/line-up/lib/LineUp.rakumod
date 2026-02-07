unit module LineUp;

sub deli-order (:$customer, :$ticket) is export {
    my $suffix = 'th';

    my $mod100 = $ticket % 100;
    my $mod10  = $ticket % 10;
    if $mod100 != 11|12|13 {
        if $mod10 == 1 { $suffix = 'st' }
        elsif $mod10 == 2 { $suffix = 'nd' }
        elsif $mod10 == 3 { $suffix = 'rd' }
    }
    "$customer, you are the $ticket$suffix customer we serve today. Thank you!";
}
