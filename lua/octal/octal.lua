return function(input)
   return {
      input = input,
      to_decimal = function()
         local invalidOctal = "[^0-7]"
         local res = 0
         if input:match(invalidOctal) then
            return res
         end

        for c in input:gmatch(".") do
            res = res * 8 + c
        end
         return res
      end
   }
end
