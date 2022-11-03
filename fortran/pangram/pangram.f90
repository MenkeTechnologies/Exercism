module pangram
  implicit none
  character(len=*), parameter :: &
    ascii_letters = 'abcdefghijklmnopqrstuvwxyzABCDEFGHIJKLMNOPQRSTUVWXYZ'
contains
  pure logical function is_pangram(s)
    character(*), intent(in) :: s
    logical :: has_letter(26)
    integer :: i, i_letter
    has_letter = .false.
    do i = 1, len(s)
      i_letter = index(ascii_letters, s(i:i))
      if (i_letter > 26) i_letter = i_letter - 26
      if (i_letter > 0) has_letter(i_letter) = .true.
    end do
    is_pangram = all(has_letter)
  end function is_pangram
end module pangram
