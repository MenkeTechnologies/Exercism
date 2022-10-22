class Raindrops

    def self.convert(n)
        r = ""

        r += "Pling" if n % 3 == 0
        r += "Plang" if n % 5 == 0
        r += "Plong" if n % 7 == 0

        r.empty? ? n.to_s : r
    end
end
