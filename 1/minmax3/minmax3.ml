let minmax3 a b c =
  let max2 x y = if (x < y) then y else x in
  let min2 x y = if (x < y) then x else y in
    (min2(min2(a,b),c), max2(max2(a,b),c));;

minmax3 1 2 3;;