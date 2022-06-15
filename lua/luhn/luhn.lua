local luhn = {}

function luhn.valid(number_text)
    local nows = number_text.gsub(number_text, " ", "")

    if #nows <= 1 or nows:find("%D") then
        return false
    else
        local sum = 0
        for index = #nows, 1, -1 do
            local digit = tonumber(nows:sub(index, index))
            if index % 2 == 0 then
                digit = digit * 2
                if digit > 9 then
                    digit = digit - 9
                end
            end
            sum = sum + digit
        end
        return sum % 10 == 0
    end
end

return luhn
