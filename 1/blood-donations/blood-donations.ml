type blood_group = A | B | AB | O ;; 
let check_groups x y = match (x,y) with 
  (_,AB) -> true
| (O,_) ->true
| (A,A) ->true
| (B,B) ->true
| (_,_) ->false ;;

assert (check_groups O AB = true);;
assert (check_groups A B = false);;
assert (check_groups AB AB = true);; 