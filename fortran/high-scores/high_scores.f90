module high_scores
    implicit none
contains

    function scores(score_list)
        integer, dimension(:) :: score_list
        integer, dimension(lbound(score_list,dim=1):ubound(score_list,dim=1)) :: scores
        scores = score_list
    end function

    function latest(score_list)
        integer, dimension(:) :: score_list
        integer :: latest
        latest = score_list(size(score_list))
    end function

    function personalBest(score_list)
        integer, dimension(:) :: score_list
        integer :: personalBest
        personalBest = maxval(score_list)
    end function

    function personalTopThree(score_list)
        integer, dimension(:) :: score_list
        logical, dimension(99) :: not_used
        integer, dimension(3) :: personalTopThree
        integer :: i, j, max, maxIdx
        do i=1,size(score_list)
        not_used(i) = .true.
        end do
        do i=1,3
        max = 0
        maxIdx = -1
        do j=1,size(score_list)
        if (not_used(j) .and. score_list(j) >= max) then
            max = score_list(j)
            maxIdx = j
        end if
        end do
        personalTopThree(i:i) = max
        if (maxIdx > -1) then
            not_used(maxIdx) = .false.
        end if
        end do
    end function

end module
