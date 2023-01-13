class Bob
    def self.hey(s)

        return "Fine. Be that way!" if s.blank?

        if /[A-Z]/ =~ s && /[a-z]/ !~ s
           return (/\?$/ =~ s ?  "Calm down, I know what I'm doing!" : "Whoa, chill out!")
        end

        /\?$/ =~ s ?  "Sure." : "Whatever."


    end
end
