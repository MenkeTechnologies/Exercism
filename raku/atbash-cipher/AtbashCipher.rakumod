unit module AtbashCipher;


constant FWD = ['a'..'z'];
constant RVS = ['z'...'a'];

sub encode ($phrase) is export {
    $phrase.&decode.comb(5).Str
}

sub decode ($phrase) is export {
    $phrase.lc.comb(/<[a..z 0..9]>/).join.trans((FWD) => RVS)
}
