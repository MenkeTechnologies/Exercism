=begin
Write your code for the 'Phone Number' exercise in this file. Make the tests in
`phone_number_test.rb` pass.

To get started with TDD, see the `README.md` file in your
`ruby/phone-number` directory.
=end

class PhoneNumber

  def self.clean(num)

    if num =~ /^\s*(\+?1?\s*)?\(?([2-9]\d{2})\)?[-.\s]*([2-9]\d{2})[-.\s]*(\d{4})\s*$/
      "#{$2}#{$3}#{$4}"
    end
  end


end
