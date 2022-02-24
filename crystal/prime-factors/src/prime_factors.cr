module PrimeFactors
  def self.factors(init)
    fac = [] of Int32
    divisor = 2

    while init > 1
      while init % divisor == 0
        fac << divisor
        init /= divisor
      end

      divisor += 1

    end

    fac

  end
end
