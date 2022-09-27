module SecretHandshake
  COMMANDS = {
    1 => "wink",
    2 => "double blink",
    4 => "close your eyes",
    8 => "jump"
  }
  REVERSE_MASK = 16

  def self.commands(n)
    actions = COMMANDS.select { |mask, _| n & mask > 0 }
                      .values
    if n & REVERSE_MASK > 0
      actions.reverse
    else
      actions
    end
  end
end
