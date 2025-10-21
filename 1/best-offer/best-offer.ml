let best_offer of1 of2 of3 = match (of1,of2,of3) with
  (None,None,None) -> None
| (Some(x),Some(y),Some(z)) -> Some( if(x>y) then (if(x>z) then x else z) else (if(y>z) then y else z) )
| (None,Some(y),Some(z)) -> Some( if(y>z)then y else z )
| (Some(x),Some(y),None) -> Some( if(x>y)then x else y )
| (Some(x),None,Some(z)) -> Some( if(x>z)then x else z )
| (Some(x),None,None) -> Some(x)
| (None,Some(y),None) -> Some(y)
| (None,None,Some(z)) -> Some(z);;
