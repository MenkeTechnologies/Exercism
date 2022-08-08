is_alpha(Char):-
  char_type(Char, alpha).
isogram(Str):-
  string_lower(Str, Lower),
  string_chars(Lower, Chars),
  include(is_alpha, Chars, Letters),
  is_set(Letters).
