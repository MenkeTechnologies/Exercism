import java.util.ArrayList;
import java.util.List;

class PrimeFactorsCalculator {
    List<Long> calculatePrimeFactorsOf(long start) {

        List<Long> fac = new ArrayList<>();
        long divisor = 2;

        while (start > 1) {
            while (start % divisor == 0) {
                fac.add(divisor);
                start /= divisor;
            }

            ++divisor;
        }

        return fac;
    }
}
