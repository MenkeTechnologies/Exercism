function bob(s::AbstractString)::AbstractString
    nows = strip(s)
    silence = isempty(nows)
    question = endswith(nows, '?')
    yelling = nows == uppercase(nows) && any(isuppercase, nows)
    if yelling && question
        "Calm down, I know what I'm doing!"
    elseif yelling
        "Whoa, chill out!"
    elseif question
        "Sure."
    elseif silence
        "Fine. Be that way!"
    else
        "Whatever."
    end
end

