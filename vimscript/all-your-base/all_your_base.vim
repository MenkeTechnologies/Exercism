function! Rebase(digits, inputBase, outputBase) abort
    if a:inputBase < 2
        throw 'input base must be >= 2'
    endif

    if a:outputBase < 2
        throw 'output base must be >= 2'
    endif
    let sum = 0
    for n in a:digits
        if n < 0 || n >= a:inputBase
            throw 'all digits must satisfy 0 <= d < input base'
        endif
        let sum = sum * a:inputBase + n
    endfor

    if sum == 0
        return [0]
    endif

    let res = []

    while sum > 0
        let res = [sum % a:outputBase] + res
        let sum /= a:outputBase
    endwhile

    return res

endfunction
