let max_nat a b = if(a<0) then failwith("a non e un numero naturale") else 
  if (b<0) then failwith("b non e un numero naturale") 
  else if(a>b) then a else b;;

assert(max_nat 2 5 = 5);;
assert(max_nat 5 2 = 5);;
assert(try max_nat (-2) 5 |> fun _ -> false with _ -> true);;
assert(try max_nat 2 (-5) |> fun _ -> false with _ -> true);;
assert(try max_nat (-2) (-5) |> fun _ -> false with _ -> true);;