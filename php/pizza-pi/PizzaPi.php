<?php
class PizzaPi {
    public function calculateDoughRequirement(int $pizzas, int $persons): int {
        return $pizzas * ($persons * 20 + 200);
    }
    public function calculateSauceRequirement(int $pizzas, int $sauceCanVolume): int {
        return $pizzas * 125 / $sauceCanVolume;
    }
    public function calculateCheeseCubeCoverage(int $cheeseLength, float $desiredCheeseThickness, int $pizzaDiameter): int {
        return $cheeseLength ** 3 / ($desiredCheeseThickness * pi() * $pizzaDiameter);
    }
    public function calculateLeftOverSlices(int $pizzas, int $friends): int {
        return $pizzas * 8 % $friends;
    }
}

