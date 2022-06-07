unit module ETL;

sub transform (%input) is export {
    Hash[ Int:D, Str:D ].new: %input.invert.map: { .key.lc => .value }
}
