Red [
	description: {"Eliud's Eggs" exercise solution for exercism platform}
	author: "" ; you can write your name here, in quotes
]

egg-count: function [number] [
	cnt: 0
	while [number > 0] [
		if number and 1 > 0 [cnt: cnt + 1]
		number: number >> 1
    ]
    cnt
]

