import java.util.List;
import java.util.stream.Collectors;

class Anagram {
    String target;
    List<Integer> sortedChars;

    public Anagram(String target) {
        this.target = target.toUpperCase();
        sortedChars = target.toUpperCase().chars().sorted().boxed().collect(Collectors.toList());
    }

    public List<String> match(List<String> asList) {

        return asList.stream().filter(str ->
                sortedChars.equals(str.toUpperCase().chars().sorted().boxed().collect(Collectors.toList())) &&
                        !str.toUpperCase().equals(target)

        ).collect(Collectors.toList());
    }
}
