let square x = x*x;;

let exp9 x = square(square(square x))*x;;

assert( exp9 3 = 19683);;

print_endline "test passato"