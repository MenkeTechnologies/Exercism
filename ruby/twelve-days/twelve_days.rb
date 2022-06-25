# frozen_string_literal: true

class TwelveDays
  DAYS = %w[first second third fourth fifth sixth seventh eighth ninth tenth eleventh twelfth].freeze
  GIFTS = [
    'a Partridge in a Pear Tree.',
    'two Turtle Doves',
    'three French Hens',
    'four Calling Birds',
    'five Gold Rings',
    'six Geese-a-Laying',
    'seven Swans-a-Swimming',
    'eight Maids-a-Milking',
    'nine Ladies Dancing',
    'ten Lords-a-Leaping',
    'eleven Pipers Piping',
    'twelve Drummers Drumming'
  ].freeze

  def self.song
    DAYS.map.with_index do
      rng = 0.._2
      gstr = if rng.size > 1
               GIFTS[1.._2].reverse.join(', ') + ", and #{GIFTS.first}"
             else
               GIFTS[rng].reverse.join
             end

      "On the #{_1} day of Christmas my true love gave to me: #{gstr}\n" + (_2 < 11 ? "\n" : '')
    end.join
  end
end
