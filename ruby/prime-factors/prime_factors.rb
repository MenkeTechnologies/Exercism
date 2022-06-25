class PrimeFactors

  def self.of(start)

    fac = []
    divisor = 2

    while start > 1
      while (start % divisor).zero?
        fac << divisor
        start /= divisor
      end

      divisor += 1
    end

    fac

  end

end
