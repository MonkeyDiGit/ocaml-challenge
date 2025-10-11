let best_offer (o1: int option) (o2: int option) (o3: int option) = 
    if o1 > o2 then if o1 > o3 then o1 else o3
    else if o2 > o3 then o2 else o3;;