class SecretHandshake
  HANDSHAKES = { 1 => 'wink', 2 => 'double blink', 4 => 'close your eyes', 8 => 'jump' }.freeze
  attr_reader :commands
  def initialize(m)
    @commands = []
    if m.is_a? Integer
      @commands = HANDSHAKES.filter { m & _1 > 0 }.values
      @commands.reverse! if m & 16 > 0
    end
  end
end
