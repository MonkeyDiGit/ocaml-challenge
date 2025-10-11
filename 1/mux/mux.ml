let mux2 s0 a b = (a && s0) || (b && not s0);;

let mux2_2 s0 a b = if s0 then a else b;;

(*let mux2_3 (s0, a , b) = match(s0, a, b) with bisogna fare la tabella con tutte le possibili combinazioni*)

let mux4_0 s1 s0 a0 a1 a2 a3 = 
  (not s1 && not s0) && a0 ||
  (not s1 && s0)  && a1 ||
  (s1 && not s0) && a2 ||
  (s1 && s0) && a3;;

let mux4 s1 s0 a0 a1 a2 a3 = 
  (not s1) && (mux2 (not s0) a0 a1) ||
  s1 && (mux2 (not s0) a2 a3);;

let mux4_1 s1 s0 a0 a1 a2 a3 =
  mux2 s1 (mux2 s0 a3 a2) (mux2 s0 a1 a0) ;;

assert(mux2 true false true = false);;

assert(mux4_1 false false false true false true = false);;
assert(mux4_1 false true false true false true = true);;
assert(mux4_1 true false false true false true = false);;
assert(mux4_1 true true false true false true = true);;
print_endline "Tutti i test passati!"