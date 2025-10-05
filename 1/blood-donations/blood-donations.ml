type blood_group = A | B | AB | O
let check_groups x y = if(x = y || y = AB || x = O) then true else false;;

assert (check_groups O AB = true);;
assert (check_groups A B = false);;
assert (check_groups AB AB = true);;

print_endline "Test passati"