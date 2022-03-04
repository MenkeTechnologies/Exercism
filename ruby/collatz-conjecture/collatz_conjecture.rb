# frozen_string_literal: true
# Write your code for the 'Collatz Conjecture' exercise in this file. Make the tests in
# `collatz_conjecture_test.rb` pass.
#
# To get started with TDD, see the `README.md` file in your
# `ruby/collatz-conjecture` directory.
class CollatzConjecture

  def self.steps(limit)

    throw ArgumentError if limit < 1

    cnt = 0

    while limit > 1
      limit = limit.even? ? limit / 2 : 3 * limit + 1
      cnt += 1
    end

    cnt

  end
end
