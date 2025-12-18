type person = Person of (string * int * string option);;
let make_person name age emailop = 
  if age<0 && age>150 
    then failwith("eta non valida") 
  else Person(name,age,emailop)
;;

let get_email (Person(name,age,email)) = email;;

let can_send_adult_email (Person(name,age,email)) = 
  age>=18 && get_email(Person(name,age,email))!=None
;;


(*assert*)
let gino = make_person "gino" 21 (Some "gino@gmail.com");;
let pino = make_person "pino" 23 None;;
let anna = make_person "anna" 16 (Some "anna@tiscali.it");;

assert(get_email gino = Some "gino@gmail.com");;
assert(get_email pino = None);;

assert(can_send_adult_email gino);;
assert(not (can_send_adult_email pino));;
assert(not (can_send_adult_email anna));;