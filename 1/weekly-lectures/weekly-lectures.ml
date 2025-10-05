type weekday = Mo | Tu | We | Th | Fr

type course = ALF | LIP
let isLecture0 d c = 
  if(c = ALF && (d = Tu || d = Th || d = Fr) ||
    c = LIP && (d = We || d = Th)) then true
else false;;

let isLecture d c = match c with
| ALF -> d=Tu || d = Th || d = Fr
| LIP -> d = We || d = Th;;

assert( isLecture Mo ALF = false);;
assert( isLecture We LIP = true);;

print_endline "Test passati"