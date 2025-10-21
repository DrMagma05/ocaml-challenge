let minmax3 a b c =
  if(a>b)then(
      if(b>c)then (a,c)
      else if(a>c) then (a,b)
      else (c,b)
    )else(
      if(a>c)then (b,c)
      else if(b>c) then (b,a)
      else (c,a));;