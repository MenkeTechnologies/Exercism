class Cipher
  ALPHABET = [*'a'..'z']
  A_NUM = 'a'.ord

  attr_reader :key

  def initialize(key = nil)
    @key = key || 100.times.map { ALPHABET.sample }.join
    fail ArgumentError, 'invalid chars in key' if !valid?(@key)
  end

  def encode(s)
    s.chars.zip(@key.chars).map do |char, key|
      ALPHABET[(char.ord - A_NUM + key.ord - A_NUM) % ALPHABET.length]
    end.join
  end

  def decode(s)
    s.chars.zip(@key.chars).map do |char, key|
      ALPHABET[char.ord - key.ord]
    end.join
  end

  private
  def valid?(key)
    key =~ /^[a-z]+$/
  end
end
