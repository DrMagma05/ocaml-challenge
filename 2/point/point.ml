
type point =  float*float;;
type color = Red | Green | Blue;;
type color = RED | GREEN | BLUE;;
type colored_point = point*color;;
let translate (p:point) ofx ofy = ((fst(p) +. ofx, snd(p) +. ofy):point);;
let distance_from_origin ((x,y):point) = sqrt(x*.x+.y*.y);;
let same_color ((_,c1):colored_point) ((_,c2):colored_point) = 
  if(c1==c2) then true else false;;
let recolor ((p,c1):colored_point) (c2:color) =
  ((p,c2):colored_point);;