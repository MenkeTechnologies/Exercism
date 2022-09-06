class PrimeFactors {
    List<int> factors(int number) {
        int divisor = 2;
        List<int> r = [];
        while (number > 1) {
            while(number % divisor == 0) {
                r.add(divisor);
                number ~/= divisor;
            }
            ++divisor;
        }
        return r;
    }
}

