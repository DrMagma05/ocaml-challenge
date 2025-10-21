type weekday = Mo | Tu | We | Th | Fr ;;
type course = ALF | LIP ;;

let isLecture w c = if(c = ALF) then (w=Tu)||(w=Th)||(w=Fr) else (w=We)||(w=Th);;
