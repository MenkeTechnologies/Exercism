colors = c("black", "brown", "red", "orange", "yellow", "green", "blue", "violet", "grey", "white") # nolint

value = function(resistor_colors) {
  (match(resistor_colors[1], colors) - 1) * 10 + match(resistor_colors[2], colors) - 1
}
