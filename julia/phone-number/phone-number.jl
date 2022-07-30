function clean(phone_number)
    m = match(r"\s*(?:\+?1?\s*)?\(?([2-9]\d{2})\)?[-.\s]*([2-9]\d{2})[-.\s]*(\d{4,})\s*", phone_number)
    (m === nothing || length(m.captures) != 3) && throw(ArgumentError(""))
    res = join(m.captures)
    length(res) != 10 && throw(ArgumentError(""))
    res
end

