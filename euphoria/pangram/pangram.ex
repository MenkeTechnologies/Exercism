include wildcard.e

public function is_pangram(sequence s)
    sequence lc = lower(s)
    for c='a' to 'z' do
        if not find(c, lc) then return 0 end if
    end for
    return 1
end function
