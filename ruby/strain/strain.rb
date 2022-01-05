# frozen_string_literal: true

# Write your code for the 'Strain' exercise in this file. Make the tests in
# `strain_test.rb` pass.
#
# To get started with TDD, see the `README.md` file in your
# `ruby/strain` directory.

class Array
  def keep(&clo)
    reduce([]) { clo.call(_2) ? _1 << _2 : _1 }
  end

  def discard(&clo)
    reduce([]) { clo.call(_2) ? _1 : _1 << _2 }
  end
end
