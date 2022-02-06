ALLERGIES_HASH = {
  'eggs' => 1,
  'peanuts' => 2,
  'shellfish' => 4,
  'strawberries' => 8,
  'tomatoes' => 16,
  'chocolate' => 32,
  'pollen' => 64,
  'cats' => 128
}.freeze

class Allergies
  def initialize(mask)
    @mask = mask
  end

  def allergic_to?(allergen)
    (@mask & ALLERGIES_HASH[allergen]).positive?
  end

  def list
    ALLERGIES_HASH.keys.filter { allergic_to? _1 }
  end

end
