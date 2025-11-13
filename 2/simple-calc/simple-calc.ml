type operation = Add of int * int | Sub of int * int | Mul of int * int | Div of int * int;;
let eval op = match op with
  Add(x,y) -> Some(x+y)
| Sub(x,y) -> Some(x-y)
| Mul(x,y) -> Some(x*y)
| Div(x,y) -> if y == 0 then None else Some(x/y);;

let make_operation op x y = match op with
  '+' -> Add(x,y)
| '-' -> Sub(x,y)
| '*' -> Mul(x,y)
| '/' -> if y==0 then failwith("non puoi dividere per 0") else Div(x,y)
| _ -> failwith("opcode non valido");;