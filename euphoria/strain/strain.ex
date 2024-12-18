public function keep(sequence seq, atom f)
    sequence res = {}
    for i = 1 to length(seq) do
        if call_func(f, {seq[i]}) then
            res &= {seq[i]}
        end if
    end for
    return res
end function

public function discard(sequence seq, atom f)
    sequence res = {}
    for i = 1 to length(seq) do
        if not call_func(f, {seq[i]}) then
            res &= {seq[i]}
        end if
    end for
    return res
end function
