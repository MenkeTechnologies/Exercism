# frozen_string_literal: true
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
