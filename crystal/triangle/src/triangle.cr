# Please implement your solution to triangle in this file

class Triangle

  alias Length = Int32 | Float64
  alias Sides  = {Length, Length, Length}

    def initialize(@sides : Sides)

        @sides.select{|s| s <= 0}.map { abort }

        if @sides[0] > @sides[1] + @sides[2]
            abort
        end

        if @sides[1] > @sides[0] + @sides[2]
            abort
        end

        if @sides[2] > @sides[0] + @sides[1]
            abort
        end
    end

    def uniq
        @sides.to_set.size
    end

    def abort
        raise ArgumentError.new
    end

    def equilateral?
        uniq == 1
    end

    def scalene?
        uniq == 3
    end

    def isosceles?
        equilateral? || uniq == 2
    end
end
