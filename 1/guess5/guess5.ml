let guess5 n =  
  if(0>n&&n>6) then failwith ("n deve essere compreso tra 1 e 5 estremi inclusi")
  else (let r=Random.int(5) in (n=r,r));;