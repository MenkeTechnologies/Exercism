public function reverse(sequence s)
    sequence res = ""

    for i = length(s) to 1 by -1 do
        res &= s[i]
    end for

    return res
end function
