module Allergies

  MAP = {
  "eggs"         => 1 << 0,
  "peanuts"      => 1 << 1,
  "shellfish"    => 1 << 2,
  "strawberries" => 1 << 3,
  "tomatoes"     => 1 << 4,
  "chocolate"    => 1 << 5,
  "pollen"       => 1 << 6,
  "cats"         => 1 << 7,
  }

  def self.allergic_to(allergy, m)
    MAP[allergy] & m > 0

  end

  def self.list(m)
    MAP.keys.select {|k| MAP[k] & m > 0}
  end
end
