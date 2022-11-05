function trinary_to_decimal(s::AbstractString)
    result = 0
    for c in s
        if c in '0':'2'
            result = result * 3 + c - '0'
        else
            return 0
        end
    end
    result
end
