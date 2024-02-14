Red [
	description: {"Resistor Color Duo" exercise solution for exercism platform}
	author: "" ; you can write your name here, in quotes
]
lst: ["Black" "Brown" "Red" "Orange" "Yellow" "Green" "Blue" "Violet" "Grey" "White"]
value: function [
	colors
] [
	(index? find lst colors/1) - 1 * 10 + ((index? find lst colors/2) - 1)
]
