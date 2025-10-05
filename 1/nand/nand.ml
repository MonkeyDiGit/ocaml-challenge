let nand a b = not (a && b);;

let nand2 a b = if not (a && b) then true else false;;

let nand3 a b = match (a,b) with
    (false, false) -> true
  | (false, true) -> true
  | (true, false) -> true
  | (true, true) -> false;;

let nand4 a b = match (a,b) with
  (false,_) -> true
  | _ -> not b;;