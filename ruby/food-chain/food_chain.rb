class FoodChain
  INTRO = "I know an old lady who swallowed a "
  OUTRO = "fly.\nI don't know why she swallowed the fly. Perhaps she'll die.\n"
  REASON = "She swallowed the %{critter} to catch the "
  VERSE_CLAUSES = [
    [
      "spider",
      "It wriggled and jiggled and tickled inside her.\n%{last_stanza}",
      " that wriggled and jiggled and tickled inside her"
    ],
    ["bird", "How absurd to swallow a bird!\n%{last_stanza}", ""],
    ["cat", "Imagine that, to swallow a cat!\n%{last_stanza}", ""],
    ["dog", "What a hog, to swallow a dog!\n%{last_stanza}", ""],
    ["goat", "Just opened her throat and swallowed a goat!\n%{last_stanza}", ""],
    ["cow", "I don't know how she swallowed a cow!\n%{last_stanza}", ""],
    ["horse", "She's dead, of course!\n", ""]
  ]

  def self.song
    parts = {last_stanza: OUTRO}
    song = [INTRO + OUTRO]


  end

end
