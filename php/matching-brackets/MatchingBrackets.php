<?php

const MAP = [
	'(' => ')',
	'[' => ']',
	'{' => '}',
];

function brackets_match(string $input): bool
{
	$stack = [];

    foreach (str_split($input) as $bracket) {
		if (in_array($bracket, array_keys(MAP))) {
			$stack[]= MAP[$bracket];
		} else if (in_array($bracket, array_values(MAP))) {
			$expected = array_pop($stack);
			if ($expected !== $bracket) {
				return false;
			}
		}
	}
	return count($stack) === 0;
}

