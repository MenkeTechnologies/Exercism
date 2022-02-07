"
" Convert a number to a string, the contents of which depend on the number's
" factors.
"
"   - If the number has 3 as a factor, output 'Pling'.
"   - If the number has 5 as a factor, output 'Plang'.
"   - If the number has 7 as a factor, output 'Plong'.
"   - If the number does not have 3, 5, or 7 as a factor, just pass
"     the number's digits straight through.
"
" Example:
"
"   :echo Raindrops(15)
"   PlingPlang
"
let s:map = {3: 'Pling', 5: 'Plang', 7: 'Plong'}
function! Raindrops(n) abort
    let s = join(map(filter(keys(s:map), {i,k -> a:n % k == 0}), {i,k -> s:map[k]}), '')

    return empty(s) ? string(a:n) : s
endfunction
