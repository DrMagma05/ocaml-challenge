(*logical*)
let mux2L s0 a b = a && s0 || b && not(s0);;

(*conditional*)
let mux2C s0 a b = if(s0) then a else b;;
 
(*pattern matching*)
let mux2P s0 a b = match s0 with
  true -> a
| false -> b;;


(*Multiplexer4*)
let mux4L s1 s0 a0 a1 a2 a3 = mux2L s1 (mux2L s0 a3 a2) (mux2L s0 a1 a0);;
let mux4C s1 s0 a0 a1 a2 a3 = mux2C s1 (mux2C s0 a3 a2) (mux2C s0 a1 a0);;
let mux4P s1 s0 a0 a1 a2 a3 = mux2P s1 (mux2P s0 a3 a2) (mux2P s0 a1 a0);;
let mux4 s1 s0 a0 a1 a2 a3 = mux4L s1 s0 a0 a1 a2 a3;;

assert(mux4 false false false true false true = false);;
assert(mux4 false true false true false true = true);;
assert(mux4 true false false true false true = false);;
assert(mux4 true true false true false true = true);;