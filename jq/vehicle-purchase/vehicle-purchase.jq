def needs_license: [.] | inside(["car", "truck"]);

def choose_vehicle: "\(sort[0]) is clearly the better choice.";

def resell_price:
  (if .age < 3 then 0.80 elif .age <= 10 then 0.70 else 0.50 end) as $rate
  | .original_price * $rate;
