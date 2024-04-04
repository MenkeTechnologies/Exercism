module.exports = class
	@at: (h, m)->
		new Clock h, m
	constructor: (h = 0, m = 0)->
		@h = (h + m // 60) %% 24
		@m = m %% 60
	toString: ->
		"#{ "0#{ @h }"[ -2.. ] }:#{ "0#{ @m }"[ -2.. ] }"
	plus: (m)->
		new Clock @h, @m + m
	minus: (m)->
		new Clock @h, @m - m
	equals: (clock)->
		@h is clock.h and @m is clock.m
