<?php

const BANDS = ['black', 'brown', 'red', 'orange', 'yellow', 'green', 'blue', 'violet', 'grey', 'white'];

class ResistorColorDuo {
    public function getColorsValue(array $colors): int {
        return (int) implode('', array_map(fn($c) => array_search(strtolower($c), BANDS), array_slice($colors, 0, 2)));
    }
}
