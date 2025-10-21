(*logical*)
let xorL a b = a && not(b) || not(a) && b;;

(*conditional*)
let xorC a b = if(a) then (if(b) then false else true) else (if(b) then true else false);;

(*pattern matching*)
let xorP a b = match (a,b) with
  (true,false) -> true
| (true,true) -> false
| (false,true) -> true
| (false,false) -> false;;