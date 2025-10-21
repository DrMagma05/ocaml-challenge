let parrot_trouble act t = if (act) then (if (t<0||t>23) then None else Some(true)) else Some(false);;
