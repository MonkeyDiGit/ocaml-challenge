let seven_eleven_doubles () = (*Definizione di una funzione con zero parametri*)
  let d1 = 1 + Random.int(6) in
  let d2 = 1 + Random.int(6) in
  (d1 + d2 = 7 || d1 + d2 = 11 || d1 = d2, d1, d2);;  (*In questo caso b prenderà il valore della proposizione*)

  seven_eleven_doubles();;