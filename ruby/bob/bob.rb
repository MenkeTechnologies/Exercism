# frozen_string_literal: true

# Write your code for the 'Bob' exercise in this file. Make the tests in
# `bob_test.rb` pass.
#
# To get started with TDD, see the `README.md` file in your
# `ruby/bob` directory.

class Bob
  def self.hey(remark)
    remark.gsub!(/\s+/, '')

    return 'Fine. Be that way!' if remark.empty?

    if remark !~ /[a-z]/ && remark =~ /[A-Z]/

      return "Calm down, I know what I'm doing!" if remark =~ /\?$/

      return 'Whoa, chill out!'

    end

    return 'Sure.' if remark =~ /\?$/

    'Whatever.'
  end
end
