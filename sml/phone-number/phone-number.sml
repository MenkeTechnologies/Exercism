fun clean (text: string): string option =
let
  val nums = String.translate (fn c => if Char.isDigit c then (Char.toString c) else "") text
  val digits = explode nums
  fun validArea d =
  let
    val n1 = (Char.ord (List.nth (d, 0)))
    val n2 = (Char.ord (List.nth (d, 3)))
  in
    n1 >= 50 andalso n2 >= 50 andalso n1 <= 57 andalso n2 <= 57
  end
  in
    if String.size nums = 10 andalso validArea digits then SOME(nums)
    else if String.size nums = 11
    andalso List.nth (digits, 0) = #"1"
    andalso validArea (List.drop (digits, 1))
    then SOME(String.extract (nums, 1, NONE))
    else NONE
  end
