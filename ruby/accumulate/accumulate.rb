=begin
Write your code for the 'Accumulate' exercise in this file. Make the tests in
`accumulate_test.rb` pass.

To get started with TDD, see the `README.md` file in your
`ruby/accumulate` directory.
=end

class Array
  def accumulate(&clo)
    reduce([]) { _1 << clo.call(_2) }
  end
end
