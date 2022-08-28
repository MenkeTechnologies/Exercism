function binarysearch(arr, n)
    lo = 1
    hi = length(arr)
    while lo <= hi
        mid = Int(floor((lo + hi) / 2))
        if (arr[mid] < n)
            lo = mid + 1
        elseif (arr[mid] > n)
            hi = mid - 1
        elseif (arr[mid] == n)
            return mid:mid
        end
    end
    return lo:hi
end
