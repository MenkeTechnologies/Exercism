encode(input) = atbash(input, grouping=true)
decode(input) = atbash(input, grouping=false)

function atbash(input; grouping =false)
    input = [c for c in input if !isspace(c) && !ispunct(c)]
    r = join(map(atbash, input))
    if grouping
        join(map(join, Iterators.partition(r, 5)), ' ')
    else
        join(r)
    end
end

function atbash(c::Char)
    isletter(c) || return c
    'z' - (lowercase(c) - 'a')
end
