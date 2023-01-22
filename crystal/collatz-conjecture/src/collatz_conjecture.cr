# Please implement your solution to collatz-conjecture in this file

module CollatzConjecture

    def self.steps(n)

        if n <= 0
            raise ArgumentError.new
        end

        cnt=0

        while n != 1
            if n % 2 == 0
                n /= 2
            else
                n = 3 *n + 1
            end
            cnt += 1

        end

        cnt
    end

end
