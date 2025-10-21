let movie_rating v1 v2 v3 = if((v1>0&&v1<5) && (v2>0&&v2<5) && (v3>0&&v3<5))
then (match (v1,v2,v3) with
  (5,5,5) ->"Masterpiece"

| (4,5,5) ->"Highly Recommended"
| (5,4,5) ->"Highly Recommended"
| (5,5,4) ->"Highly Recommended"

| (3,5,5) ->"Recommended"
| (5,3,5) ->"Recommended"
| (5,5,3) ->"Recommended"

| _ -> "Mixed Reviews") 
else failwith("i voti devone andare da 1 a 5 estremi compresi");;
