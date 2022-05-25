module PizzaPricing

type Pizza =
    | Margherita
    | Caprese
    | Formaggio
    | ExtraSauce of Pizza
    | ExtraToppings of Pizza
    
let pizzaPrice (pizza: Pizza): int =
    let rec inner price innerPizza =
        match innerPizza with
        | Margherita  -> price + 7
        | Caprese -> price + 9
        | Formaggio -> price + 10
        | ExtraSauce p -> inner (price + 1) p
        | ExtraToppings p -> inner (price + 2) p
        
    inner 0 pizza

let orderPrice(pizzas: Pizza list): int =
    let fee = match pizzas.Length with
              | 1 -> 3
              | 2 -> 2
              | _ -> 0
    fee + List.sumBy pizzaPrice pizzas
        
