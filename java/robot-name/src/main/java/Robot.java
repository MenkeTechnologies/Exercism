import java.util.HashMap;
import java.util.Map;
import java.util.Random;
import java.util.stream.Collectors;
import java.util.stream.IntStream;

class Robot {
    private static Map<String, Integer> MAP = new HashMap<>();
    String name;
    Random random = new Random();

    public Robot() {
        name = gen();
    }

    private String gen() {

        while (true) {
            String name = IntStream.range(0, 5)
                    .map(i -> i < 2 ? random.nextInt(26) + 'A' : random.nextInt(10) + '0').mapToObj(c -> String.valueOf((char) c)).collect(Collectors.joining(""));
            if (!MAP.containsKey(name)) {
                MAP.put(name, 1);
                return name;
            }
        }
    }

    public String getName() {
        return name;
    }

    public void reset() {
        name = gen();
    }
}
