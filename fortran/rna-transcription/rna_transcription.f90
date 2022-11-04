module rna_transcription
  implicit none
contains
  function to_rna(dna)
      character(*) :: dna
      character(len(dna)) :: to_rna
      integer :: i
      to_rna = ""
      do i = 1, len(dna(:))
        if (dna(i:i) == "G") then
          to_rna(i:i) = "C"
        else if (dna(i:i) == "C") then
          to_rna(i:i) = "G"
        else if (dna(i:i) == "T") then
          to_rna(i:i) = "A"
        else if (dna(i:i) == "A") then
          to_rna(i:i) = "U"
        end if
      end do
    return
  end function to_rna
end module rna_transcription

