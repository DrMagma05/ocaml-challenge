type vote = StrongReject | WeakReject | WeakAccept | StrongAccept;;
let decide_exam m1 m2 m3 = match (m1,m2,m3) with
  (StrongReject,_,_) -> false
| (_,StrongReject,_)-> false
| (_,_,StrongReject) ->false

| (WeakReject,WeakReject,_) ->false
| (WeakReject,_,WeakReject) ->false
| (_,WeakReject,WeakReject) ->false

| _ -> true;;