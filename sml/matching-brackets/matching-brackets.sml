val dict = [
    (#"[", #"]"),
    (#"(", #")"),
    (#"{", #"}")
]

fun processChar c stk =
    if (List.exists (fn bs => c = #1 bs) dict) then (c :: stk)
    else
        let
            val bpair = List.find (fn bs => c = #2 bs) dict
        in
            if Option.isSome bpair then
                if List.hd stk = #1 (Option.valOf bpair) then
                    List.tl stk
                else
                    raise Empty
            else stk
        end

fun aux [] [] = true
  | aux [] stk = false
  | aux (h :: t) stk = aux t (processChar h stk) handle Empty => false

fun isBalanced s = aux (String.explode s) []
