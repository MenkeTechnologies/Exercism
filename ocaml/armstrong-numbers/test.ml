(* armstrong-numbers - 1.0 *)
open OUnit2
open Armstrong_numbers

let ae exp got _test_ctxt =
  assert_equal ~printer:string_of_bool exp got

let tests = [
  "Zero is an Armstrong number" >::
  ae true (validate (0));
  "Single-digit numbers are Armstrong numbers" >::
  ae true (validate (5));
  "There are no two-digit Armstrong numbers" >::
  ae false (validate (10));
  "Three-digit number that is an Armstrong number" >::
  ae true (validate (153));
  "Three-digit number that is not an Armstrong number" >::
  ae false (validate (100));
  "Four-digit number that is an Armstrong number" >::
  ae true (validate (9474));
  "Four-digit number that is not an Armstrong number" >::
  ae false (validate (9475));
  "Seven-digit number that is an Armstrong number" >::
  ae true (validate (9926315));
  "Seven-digit number that is not an Armstrong number" >::
  ae false (validate (9926314));
]

let () =
  run_test_tt_main ("armstrong tests" >::: tests)
