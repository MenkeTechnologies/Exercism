unit module Acronym;

sub abbreviate ($s) is export {
    $s.uc.split(/<[-_\s]>/).map(*.substr(0, 1)).join
}
