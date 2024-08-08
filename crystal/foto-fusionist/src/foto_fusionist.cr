class FotoFusionist
  def self.binary_to_int(binary : String)
    binary.to_i(2)
  end
  def self.least_significant_bit(n : Int32)
    n.bit(0)
  end
  def self.hex_value(n : Int32)
    n.to_s(16, precision: 2)
  end
  def self.hex_value_from_rgb(red : Int32, green : Int32, blue : Int32)
    "#{hex_value(red)}#{hex_value(green)}#{hex_value(blue)}"
  end
end
