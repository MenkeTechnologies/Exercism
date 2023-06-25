const priceLookup = {
    "Margherita": 7,
    "Caprese": 9,
    "Formaggio": 10,
    "ExtraSauce": 1,
    "ExtraToppings": 2,
}

export function pizzaPrice(pizza, ...extras) {
  return extras.length > 0 ? priceLookup[pizza] + pizzaPrice(...extras) : priceLookup[pizza];
}

export function orderPrice(pizzaOrders) {
  let totalPrice = 0;
  for (const order of pizzaOrders) {
    totalPrice += pizzaPrice(order.pizza, ...order.extras);
  };
  return totalPrice;
};

