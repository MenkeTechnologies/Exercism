class Bob
    def self.hey(s)
        nows = s.gsub(/\s/, "")

        return "Fine. Be that way!" if nows.blank?

        if /[A-Z]/ =~ nows && /[a-z]/ !~ nows
           return (/\?$/ =~ nows ?  "Calm down, I know what I'm doing!" : "Whoa, chill out!")
        end

        /\?$/ =~ nows ?  "Sure." : "Whatever."


    end
end
