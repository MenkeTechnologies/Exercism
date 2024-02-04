Red [
	description: {"Leap" exercise solution for exercism platform}
	author: "" ; you can write your name here, in quotes
]
leap: function [
	year
] [
	(0 == modulo year 4) and ((0 <> modulo year 100) or (0 == modulo year 400))
]

