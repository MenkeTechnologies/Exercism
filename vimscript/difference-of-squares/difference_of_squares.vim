"
" Find the difference between the square of the sum and the sum of the squares
" of the first N natural numbers.
"
" Examples:
"
"   :echo SquareOfSum(3)
"   36
"   :echo SumOfSquares(3)
"   14
"   :echo DifferenceOfSquares(3)
"   22
"
function! DifferenceOfSquares(n) abort
    return SquareOfSum(a:n) - SumOfSquares(a:n)
endfunction

function! SquareOfSum(n) abort
    let sum = Sum(range(1, a:n))
    return sum * sum
endfunction

function! SumOfSquares(n) abort
    return Sum(map(range(1, a:n), 'v:val * v:val'))
endfunction

function! Sum(list) abort
    let sum = 0
    for x in a:list
        let sum+= x
    endfor

    return sum

endfunction
