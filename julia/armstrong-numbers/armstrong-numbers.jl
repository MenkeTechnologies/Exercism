function isarmstrong(n::Int)
    lst = digits(n)
    len = length(lst)
    n == sum(lst.^len)
end
