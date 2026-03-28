# frozen_string_literal: true

# Write your code for the 'Clock' exercise in this file. Make the tests in
# `clock_test.rb` pass.
#
# To get started with TDD, see the `README.md` file in your
# `ruby/clock` directory.

class Clock
  def initialize(hour: 0, minute: 0)
    hour1 = hour
    minute1 = minute
    while minute1 >= 60
      minute1 -= 60
      hour1 += 1
    end

    while minute1.negative?
      minute1 += 60
      hour1 -= 1
    end

    hour1 %= 24

    hour1 += 24 if hour1.negative?

    @hour = hour1
    @minute = minute1
  end

  attr_accessor :hour, :minute

  def +(other)
    Clock.new(hour: hour + other.hour, minute: minute + other.minute)

  end

  def -(other)
    Clock.new(hour: hour - other.hour, minute: minute - other.minute)
  end

  def ==(other)
    hour == other.hour && minute == other.minute
  end

  def to_s
    format('%02d:%02d', @hour, @minute)
  end

end
