import java.util.ArrayList;
import java.util.Arrays;

class BaseConverter {
    private int sum;

    BaseConverter(int inBase, int[] ary) {
        if (inBase < 2) throw new IllegalArgumentException("Bases must be at least 2.");
        if (Arrays.stream(ary).anyMatch(n -> n >= inBase)) throw new IllegalArgumentException("All digits must be strictly less than the base.");
        if (Arrays.stream(ary).anyMatch(n -> n < 0)) throw new IllegalArgumentException("Digits may not be negative.");
        
        sum = Arrays.stream(ary).reduce(0, (acc, n) -> acc * inBase + n);
    }

    public int[] convertToBase(int outBase) {
        if (outBase < 2) throw new IllegalArgumentException("Bases must be at least 2.");
        
        if (sum < 1 ) return new int[]{0};

        ArrayList<Integer> res = new ArrayList<>();
        while (sum > 0) {
            res.add(0, sum % outBase);
            sum /= outBase;
        }
        return res.stream().mapToInt(n -> n).toArray();
    }
}
