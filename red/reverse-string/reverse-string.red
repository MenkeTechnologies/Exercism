Red [
	description: {"Reverse string" exercise solution for exercism platform}
	author: "MenkeTechnologies"
]
reverse: function [
	"Reverses a string"
	input [string!] "String to reverse"
	return: [string!]
] [
	r: ""
	down: length? input
	while [down > 0] [
		c: pick input down
		append r c
		down: down - 1
	]
	r
]

