type card = Joker | Val of int;;

let win c1 c2 = match (c1,c2) with
| (Joker,Joker) -> false
| (Joker,_) -> true
| (_,Joker) -> false
| (_,_) -> c1>c2;;