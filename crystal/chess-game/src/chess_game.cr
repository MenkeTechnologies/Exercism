module Chess
  RANKS = 1..8
  FILES = 'A'..'H'
  def self.valid_square?(rank : Int32, file : Char) : Bool
    RANKS.includes?(rank) && FILES.includes?(file)
  end
  def self.nickname(first_name : String, last_name : String) : String
    "#{first_name[..1]}#{last_name[-2..]}".upcase
  end
  def self.move_message(first : String, last : String, square : String) : String
    valid_square?(square[1].to_i, square[0]) ?
      "#{nickname(first, last)} moved to #{square}" :
      "#{nickname(first, last)} attempted to move to #{square}, but that is not a valid square"
  end
end
