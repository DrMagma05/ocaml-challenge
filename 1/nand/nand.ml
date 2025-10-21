(*logical*)
let nAndL a b = not(a&&b);;

(*conditional*)
let nAndC a b = if(a) then if(b)then false else true else true;; 

(*pattern matching.*)
let nAndP a b = match (a,b) with
  (false,_) -> true
| (true,true) -> false
| (true,false) ->true;;