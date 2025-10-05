let xor a b = (a || b) && not(a && b);;

let xor2 (a:bool) b = if (a = b) then false else true;;
let xor3 (a,b) = match(a,b) with 
    (false, false) -> false
  | (false, true) -> true
  | (true, false) -> true
  | (true, true) -> false;;