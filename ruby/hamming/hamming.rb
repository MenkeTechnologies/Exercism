# frozen_string_literal: true
# Write your code for the 'Hamming' exercise in this file. Make the tests in
# `hamming_test.rb` pass.
#
# To get started with TDD, see the `README.md` file in your
# `ruby/hamming` directory.
class Hamming

  def self.compute(str1, str2)

    raise ArgumentError if str1.size != str2.size

    (0..str1.size - 1).reduce(0) do
      if str1[_2] != str2[_2]
        _1 + 1
      else
        _1
      end
    end

  end
end
