# Please implement your solution to difference-of-squares in this file
    class Squares

        def self.square_of_sum(num)

            (1..num).sum ** 2

        end

        def self.sum_of_squares(num)

            (1..num).map {|x| x ** 2}.sum

        end

        def self.difference_of_squares(num)

            square_of_sum(num) - sum_of_squares(num)

        end
    end
