import java.util.List;
import java.util.stream.Collectors;
import java.util.stream.IntStream;

public class Series {
    private String numStr;

    public Series(String number) {
        this.numStr = number;
    }

    public List<String> slices(int n) {
        if (numStr.length() < n)
            throw new IllegalArgumentException("Slice size is too big.");
        if (n < 1)
            throw new IllegalArgumentException("Slice size is too small.");
        
        return IntStream.rangeClosed(0, numStr.length() - n)
                .mapToObj(i -> numStr.substring(i, i + n))
                .collect(Collectors.toList());
      
    }
}
