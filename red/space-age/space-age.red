Red [
	description: {"Space Age" exercise solution for exercism platform}
	author: ""
]

solsys: [
	"Mercury" 0.2408467
	"Venus"	0.61519726
	"Earth"	1.0
	"Mars" 1.8808158
	"Jupiter" 11.862615
	"Saturn" 29.447498
	"Uranus" 84.016846
	"Neptune" 164.79132
]
age: function [ planet seconds ] [
	round/to (seconds / 31557600 / solsys/(planet)) 0.01
]

