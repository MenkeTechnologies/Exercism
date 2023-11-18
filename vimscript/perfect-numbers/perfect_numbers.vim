function! Classify(n) abort
    if a:n < 1
        throw 'Classification is only possible for positive integers.'
    endif

    let op = join(filter(range(1, a:n / 2), 'a:n % v:val == 0'), '+')
    let sum = empty(op) ? 0 : eval(op)

    return sum > a:n ? 'abundant' : sum < a:n ? 'deficient' : 'perfect'

endfunction
