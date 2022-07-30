square_of_sum(n::Int) = sum(1:n)^2

sum_of_squares(n::Int) = sum((1:n).^2)

difference(n::Int) = square_of_sum(n) - sum_of_squares(n)
