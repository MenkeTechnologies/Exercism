return function(arr, search)
    local lo = 1
    local hi = #arr
    while lo <= hi do
        local mid = lo + math.floor((hi - lo) / 2)
        local tmp = arr[mid]
        if tmp == search then
            return mid
        elseif tmp < search then
            lo = mid + 1
        else
            hi = mid - 1
        end
    end
    return -1
end
