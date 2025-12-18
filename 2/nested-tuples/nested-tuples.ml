let total_score ((_:string) , (written , oral)) = written + oral;;

let passed ((_:string) , (written , oral)) = 
  if written > 18 && oral > 18 then true
    else false
;;

let string_of_result (name , (written , oral)) = 
  if passed(name , (written , oral)) 
    then name ^ "passed whit total of " ^ string_of_int(total_score (name , (written , oral)))
  else name ^ "did not pass"
;;

let marge ((name1:string) , ((written1:int) , (oral1:int))) ((name2:string) , (written2 , oral2)) =  
  if name1!=name2 then failwith("per fare il marge devono essere lo stesso studente") else 
  match (written1>written2,oral1>oral2) with
    (true,true) -> (name1,(written1 , oral1))
  | (true,false) -> (name1,(written1,oral2))
  | (false,true) -> (name1,(written2,oral1))
  | (false,false) -> (name1,(written2,oral2))
;;


assert(total_score("paolo",(1,2)) = 3);;
assert(not(passed("paolo",(1,2))));;
assert(passed("paolo",(11,11)));;