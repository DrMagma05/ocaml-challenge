type season = Spring | Summer | Autumn | Winter ;;
let squirrel_play temperature s = match s with
  Summer -> not(temperature<15||temperature>35)
| _ -> not(temperature<15||temperature>30);;

assert(squirrel_play 18 Winter = true);;
assert(squirrel_play 32 Spring = false);;
assert(squirrel_play 32 Summer = true);;