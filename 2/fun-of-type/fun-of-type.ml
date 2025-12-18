(*valore tra 0 e 100*)
let f1 x = x>=0 && x<=100;;
(*da bool a numero binario*)
let f2 b = if b then 1 else 0;;
(*normalizazione di x tra 0 e 100 compreso con l'iformazione booleana se il dato viene effetivamente modificato ovvero se x%101 != x*)
let f3 x = (abs(x mod 101),f1 x);;
(*datta la coppia x e b ritorna il numero in modulo 101 se b e vero*)
let f4 (x,b) = if b then x mod 101 else x;;

(*ritorna una funzione che fa il modulo per x del suo input*)
let f5 x = (fun y -> abs(y mod x));;
(*crea una funzione che verifichi se il suo input e compreso tra 0 e l' assoluto di x*)
let f6 x = (fun y -> y>=0 && x<=abs(y));;
(*rende f1 se vera e il suo inverso se falsa*)
let f7 b = if b then
    f1
  else (fun y -> y<0 || y>100)
;; 
let f8 b = 
  if b then f2 
  else (fun b' -> if b' then 0 else 1)
;;
let f9 b = if b then (fun a' -> a' + a') else (fun a' -> a'*a');;
let f10 f = (f 2 ) + 2;;
let f11 f = if f 2 then 0 else 1;;
let f12 f = (f true)+2;;
let f13 f = if f 1 then false else true;;
let f14 f = if f true then 1 else 0;;
let f15 a (x,y) = if a+x == a*y then a else x;;
let f16 x = (fun f' -> (fun x' -> (x'+f')*x));;
let f17 f = (fun f' -> f' * f 2);;
