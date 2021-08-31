# Please implement your solution to acronym in this file

class Acronym
    def self.abbreviate(str)

        str.upcase.gsub(/[_,]/, "").gsub(/-/, " ").split.map{|s| s[0]}.join
    end
end
