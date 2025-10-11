type vote = StrongReject | WeakReject | WeakAccept | StrongAccept

let accept v0 = if v0 = WeakAccept || v0 = StrongAccept then true else false

let decide_exam v1 v2 v3 = 
  if v1 = StrongReject || v2 = StrongReject || v3 = StrongReject then false
  else if accept v1 && (accept v2 || accept v3) then true
  else if accept v2 && accept v3 then true
  else false;;