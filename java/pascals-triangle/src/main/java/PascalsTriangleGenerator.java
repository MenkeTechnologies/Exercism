import java.util.ArrayList;
import java.util.Arrays;
import java.util.List;
import java.util.stream.IntStream;

class PascalsTriangleGenerator {
    public int[][] generateTriangle(int i) {

        if (i <= 0) {
            return new int[][]{};
        }

        List<List<Integer>> init = new ArrayList<>(new ArrayList<>());

        IntStream.rangeClosed(2, i)
                .boxed()
                .reduce(init, (acc, n) -> {
                    return acc;
                }, (acc,n)-> {
                    return acc;
                });
    }
}
