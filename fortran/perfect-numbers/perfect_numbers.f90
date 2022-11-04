module perfect_numbers
  implicit none
contains
  character(len=9) function classify(num)
    integer, intent(in) :: num
    integer, allocatable :: lst(:)
    integer :: i, mySum

    if (num <= 0) then
      classify = "ERROR"
    else
      allocate(lst(num))
      lst(:) = 0
      do i = 1, num - 1
        if(mod(num, i) == 0) then
          lst(i) = i
        end if
      end do
      mySum = sum(lst)
      if (mySum == num) then
        classify = "perfect"
      else if (mySum > num) then
        classify = "abundant"
      else if (mySum < num) then
        classify = "deficient"
      end if
    end if
  end function
end module

