unit module Lasagna;
constant $EXPECTED-MINUTES-IN-OVEN = 40;
sub remaining-minutes-in-oven ($actualMinutesInOven) is export {
  $EXPECTED-MINUTES-IN-OVEN - $actualMinutesInOven
}
sub preparation-time-in-minutes ($numberOfLayers) is export {
  2 * $numberOfLayers
}
sub total-time-in-minutes ( $numberOfLayers, $actualMinutesInOven ) is export {
  $actualMinutesInOven + preparation-time-in-minutes $numberOfLayers
}
sub oven-alarm () is export {
  'Ding!'
}

