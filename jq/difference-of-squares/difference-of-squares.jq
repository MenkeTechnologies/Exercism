def square_of_sum:  [range(. + 1)] | pow(add;2);
def sum_of_squares: [range(. + 1)] | map(.*.) | add;

if .property == "squareOfSum" then
  .input.number | square_of_sum
elif .property == "sumOfSquares" then
  .input.number | sum_of_squares
else (.input.number |square_of_sum) - (.input.number | sum_of_squares)
end
