unit module GradeSchool;

sub roster ( :@students, :$grade ) is export {
    my %r = ();
    my @a;
    for @students { %r{$_[0]} = $_[1] }

    if (!$grade) {
        for %r.sort( {.values, .keys })>>.kv -> ($k, $v) {
            @a.append($k);
        }
        @a
    } else {
        for %r.sort(*.value)>>.kv -> ($k, $v) {
            if ($v == $grade) { @a.append($k); }
        }
        @a.sort
    }
}
