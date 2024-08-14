module Secrets
  def self.shift_back(n : UInt8, number_of_places : UInt8)
    n << number_of_places
  end
  def self.apply_mask(n : UInt8, mask : UInt8)
    n & mask
  end
  def self.set_bits(n1 : UInt8, n2 : UInt8)
    n1 | n2
  end
  def self.reverse_xor(n : UInt8, agreed_value : UInt8)
    n ^ ~agreed_value
  end
end
