# Please implement your solution to leap in this file

class Year
    def self.leap?(arg)
        arg % 4 == 0 && arg % 100 != 0 || arg % 400 == 0
    end
end
