let s:map = {3: 'Pling', 5: 'Plang', 7: 'Plong'}
function! Raindrops(n) abort
    let s = join(map(filter(keys(s:map), 'a:n % v:val == 0'), 's:map[v:val]'), '')
    return empty(s) ? string(a:n) : s
endfunction
