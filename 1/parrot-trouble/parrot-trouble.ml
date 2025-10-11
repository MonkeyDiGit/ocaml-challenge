let parrot_trouble talking time = 
  if time < 0 || time > 23 then None else
    Some (talking && (time < 7 || 20 < time));;

assert (parrot_trouble true 12 = Some false);;
assert (parrot_trouble false 23 = Some false );;
assert (parrot_trouble true 21 = Some true);;

print_endline "Tutti i test passati"