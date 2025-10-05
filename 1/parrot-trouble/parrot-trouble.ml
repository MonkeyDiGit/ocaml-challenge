let parrot_trouble talking time = 
  if 0 <= time && time <= 23 then
    (if talking && (20 < time || time < 7) then Some true else Some false)
  else None;;

assert (parrot_trouble true 12 = Some false);;
assert (parrot_trouble false 23 = Some false );;
assert (parrot_trouble true 21 = Some true);;

print_endline "Tutti i test passati"