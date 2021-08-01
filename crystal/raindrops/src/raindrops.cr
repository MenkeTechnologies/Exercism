# Please implement your solution to raindrops in this file

class Raindrops

    def self.convert(num)
        str = ""

        if num % 3 == 0
            str += "Pling"
        end
        if num % 5 == 0
            str += "Plang"
        end
        if num % 7 == 0
            str += "Plong"
        end

        if str == ""
            str = "#{num}"
        end

        str
    end
    
end
