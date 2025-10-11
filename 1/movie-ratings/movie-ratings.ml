let in_range r = 1 <= r && r <= 5;;
let movie_rating r0 r1 r2 = 
  if not(in_range r0 && in_range r1 && in_range r2) then failwith("Ratings out of range") else 
  let lista = [r0; r1; r2] in
  let lista_ordinata = List.sort(fun a b -> compare b a) lista in
  match lista_ordinata with
    [5; 5; 5] -> "Masterpiece\n"
  | [5; 5; 4] -> "Highly Recommended\n"
  | [r0; r1; r2] when r0 >= 4 && r1 >= 4 && r2 >= 3 -> "Recommended\n"
  | _ -> "Mixed Reviews\n";;

print_string (movie_rating 5 5 5);;
print_string (movie_rating 5 5 4);;
(*movie_rating 6 5 4 ;;*)
print_string (movie_rating 3 4 5);;