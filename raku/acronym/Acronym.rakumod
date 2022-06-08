unit module Acronym;

sub abbreviate ($phrase) is export {
    $phrase.uc.split(/<[-_\s]>/).map(*.substr(0, 1)).join
}
