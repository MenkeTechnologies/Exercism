function! Invalid(triangle) abort
  let sides = sort(a:triangle)
  return sides[0] == 0 || sides[1] == 0 || sides[2] == 0 || sides[0] + sides[1] < sides[2]
endfunction

function! Equilateral(triangle) abort
    if Invalid(a:triangle) | return 0 | endif
    return len(uniq(a:triangle)) == 1
endfunction

function! Isosceles(triangle) abort
    if Invalid(a:triangle) | return 0 | endif
    return len(uniq(a:triangle)) <= 2
endfunction

function! Scalene(triangle) abort
    if Invalid(a:triangle) | return 0 | endif
    return len(uniq(a:triangle)) == 3
endfunction
