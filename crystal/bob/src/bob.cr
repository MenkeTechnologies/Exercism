# Please implement your solution to bob in this file

class Bob
    def self.hey(s)

        if s.blank?
            return "Fine. Be that way!"
        end

        if /[A-Z]/ =~ s && /[a-z]/ !~ s

            if /\?$/ =~ s
                return "Calm down, I know what I'm doing!"
            end

            return "Whoa, chill out!"
        end

        if /\?$/ =~ s
            return "Sure."
        end

        "Whatever."


    end
end
