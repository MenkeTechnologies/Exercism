module BottleSong
  NUM_NAMES = { 10 => "Ten", 9 => "Nine", 8 => "Eight", 7 => "Seven", 6 => "Six", 5 => "Five",
     4 => "Four", 3 => "Three", 2 => "Two", 1 => "One", 0 => "No", }

  private def self.pluralize(count)
    count == 1 ? "" : "s"
  end
  def self.recite(start_bottles : Int32, take_down : Int32)
    raise ArgumentError.new("Too many initial bottles. #{start_bottles} > 10") if start_bottles > 10
    song = [] of String
    count = start_bottles
    while take_down.positive?
      2.times do
        start = NUM_NAMES[count]
        song << "#{start} green bottle#{pluralize(count)} hanging on the wall,"
      end
      count -= 1
      song << "And if one green bottle should accidentally fall,"
      song << "There'll be #{NUM_NAMES[count].downcase} green bottle#{pluralize(count)} hanging on the wall."
      take_down -= 1
      song << "" if take_down.positive?
    end
    song
  end
end
