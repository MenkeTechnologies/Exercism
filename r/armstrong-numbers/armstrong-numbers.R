is_armstrong_number = function(n) {
    digits = n |> as.character() |> strsplit("") |> unlist() |> as.numeric()
	n == sum(digits^length(digits))
}
