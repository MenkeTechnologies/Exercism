module armstrong_numbers
  implicit none
contains
  logical function isArmstrongNumber(num)
    integer, intent(in) :: num
    integer :: sum, i, digit, len
    character(10) :: digits
    isArmstrongNumber = .false.
    write(digits,"(i10)") num
    digits = trim(adjustl(digits))
    len = len_trim(digits)
    sum = 0
    do i = 1, len
      read(digits(i:i), *) digit
      sum = sum + digit ** len
    end do
    if (sum == num) then
      isArmstrongNumber = .true.
    end if
    return
  end function
end module

