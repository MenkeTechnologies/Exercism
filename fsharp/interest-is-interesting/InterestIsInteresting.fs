module InterestIsInteresting

let interestRate (balance: decimal): single =
  if balance >= 5000m then
        2.475f
    elif balance >= 1000m then
        1.621f 
    elif balance >= 0m then
        0.5f
    else
        3.213f

let interest (balance: decimal): decimal =
   let rate = interestRate balance
   balance * decimal rate * 0.01m

let annualBalanceUpdate(balance: decimal): decimal =
   balance + interest balance

let amountToDonate(balance: decimal) (taxFreePercentage: float): int =
   if balance < 0m then
       0
   else
       int(floor (balance * decimal (taxFreePercentage * 0.02)))
