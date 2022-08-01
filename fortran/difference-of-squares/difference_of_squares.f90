module difference_of_squares
  implicit none
contains

  pure integer function sum_of_squares(n)
    integer, intent(in) :: n
    sum_of_squares = n * (n + 1) * (2 * n + 1) / 6
  end function sum_of_squares

  pure integer function square_of_sum(n)
    integer, intent(in) :: n
    square_of_sum = (n * (n + 1) / 2) ** 2
  end function square_of_sum

  pure integer function difference(n)
    integer, intent(in) :: n
    difference = square_of_sum(n) - sum_of_squares(n)
  end function difference

end module difference_of_squares
