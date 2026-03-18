namespace TwoFer

def twoFer (name : Option String) : String :=
  let s := name.getD "you"
  "One for " ++ s ++ ", one for me."
end TwoFer