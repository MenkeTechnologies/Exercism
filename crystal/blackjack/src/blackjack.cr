module Blackjack

  CARD_VALUES = {
    "ace"   => 11, "king"  => 10, "queen" => 10, "jack"  => 10, "ten"   => 10,
    "nine"  => 9,  "eight" => 8,  "seven" => 7, "six"   => 6,  "five"  => 5,
    "four"  => 4,  "three" => 3, "two"   => 2,  "one"   => 1
  }

  def self.parse_card(card)
    CARD_VALUES[card]? || 0
  end

  def self.card_range(card1, card2)
    score = parse_card(card1) + parse_card(card2)
    case score
      when 21 then "blackjack"
      when 17..20 then "high"
      when 12..16 then "mid"
      when 4..11 then "low"
    end
  end

  def self.first_turn(card1, card2, dealer_card)
    score = parse_card(card1) + parse_card(card2)
    dealer_score = parse_card(dealer_card)
    case {score, dealer_score}
      when {22, _} then "P"
      when {12..16, 7..}, {..11, _} then "H"
      when {21, 10..11}, {17..20, _}, {12..16, _} then "S"
      when {21, _} then "W"
    end
  end

end
