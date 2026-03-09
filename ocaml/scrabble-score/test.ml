(* scrabble-score - 1.0 *)
open OUnit2
open Scrabble_score

let ae exp got _test_ctxt = assert_equal ~printer:string_of_int exp got

let tests = [
  "lowercase letter" >::
  ae 1 (score ("a"));
  "uppercase letter" >::
  ae 1 (score ("A"));
  "valuable letter" >::
  ae 4 (score ("f"));
  "short word" >::
  ae 2 (score ("at"));
  "short, valuable word" >::
  ae 12 (score ("zoo"));
  "medium word" >::
  ae 6 (score ("street"));
  "medium, valuable word" >::
  ae 22 (score ("quirky"));
  "long, mixed-case word" >::
  ae 41 (score ("OxyphenButazone"));
  "english-like word" >::
  ae 8 (score ("pinata"));
  "empty input" >::
  ae 0 (score (""));
  "entire alphabet available" >::
  ae 87 (score ("abcdefghijklmnopqrstuvwxyz"));
]

let () =
  run_test_tt_main ("scrabble-score tests" >::: tests)
