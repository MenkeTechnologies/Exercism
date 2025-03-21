import java.util.LinkedHashMap;
import java.util.Map;
import java.util.concurrent.atomic.AtomicInteger;
import java.util.stream.Collectors;

public class RomanNumerals {
    private final static Map<Integer, String> map = new LinkedHashMap<>();

    static {
        map.put(1000, "M");
        map.put(900, "CM");
        map.put(500, "D");
        map.put(400, "CD");
        map.put(100, "C");
        map.put(90, "XC");
        map.put(50, "L");
        map.put(40, "XL");
        map.put(10, "X");
        map.put(9, "IX");
        map.put(5, "V");
        map.put(4, "IV");
        map.put(1, "I");
    }

    private String s;

    public RomanNumerals(int num) {
        final AtomicInteger dup = new AtomicInteger(num);
        s = map.entrySet().stream().map(e -> {
            String s = e.getValue().repeat(dup.get() / e.getKey());
            dup.set(dup.get() % e.getKey());
            return s;
        }).collect(Collectors.joining());
    }

    public String getRomanNumeral() {
        return s;
    }
}
