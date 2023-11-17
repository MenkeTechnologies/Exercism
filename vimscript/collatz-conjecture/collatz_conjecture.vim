function! Steps(number) abort

    if a:number < 1
        throw 'Only positive integers are allowed'
    endif

    let cnt = 0
    let dup = a:number

    while dup > 1
        if dup % 2 == 0
            let dup /= 2
        else
            let dup = 3 * dup + 1
        endif
      let cnt += 1
    endwhile

    return cnt

endfunction
