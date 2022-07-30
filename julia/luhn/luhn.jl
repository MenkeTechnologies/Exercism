function luhn(s::AbstractString)::Bool
    all(isdigit(c) || isspace(c) for c in s) || return false
    digits = map(c->parse(Int,c), (c for c in s if isdigit(c)))
    length(digits) > 1 || return false
    digits[end - 1:-2:begin] = (d -> d > 9 ? d - 9 : d).(digits[end - 1:-2:begin] .* 2)
    return sum(digits) % 10 == 0
end
