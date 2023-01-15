function sieve(limit)
    lst = fill(true, limit)
    lst[1] = false
    for i=2:limit, j=2i:i:limit
        lst[j] = false
    end
    findall(lst)
end
