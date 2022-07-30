function transform(input::AbstractDict)
	return Dict(lowercase(letter) => value for (value, list) in input for letter in list)
end
