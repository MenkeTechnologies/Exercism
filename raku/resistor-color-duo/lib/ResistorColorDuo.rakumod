unit module ResistorColorDuo;

constant %COLORS = <black brown red orange yellow green blue violet grey white>.antipairs;

sub decoded-value (*@colors) is export {
    10 * %COLORS{@colors[0]} + %COLORS{@colors[1]}
}

