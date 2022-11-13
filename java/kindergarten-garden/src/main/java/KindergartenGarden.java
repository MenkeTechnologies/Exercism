import java.util.Arrays;
import java.util.List;
import java.util.stream.Collectors;
import java.util.stream.Stream;

class KindergartenGarden {
    private String garden;
    private List<String> students = List.of("Alice",
            "Bob",
            "Charlie",
            "David",
            "Eve",
            "Fred",
            "Ginny",
            "Harriet",
            "Ileana",
            "Joseph",
            "Kincaid",
            "Larry");

    KindergartenGarden(String garden) {
        this.garden = garden;
    }

    List<Plant> getPlantsOfStudent(String student) {
        String[] rows = garden.split("\n");
        int index = students.indexOf(student) * 2;
        return Arrays.stream(rows).flatMap(row ->
                Stream.of(Plant.getPlant(row.charAt(index)), Plant.getPlant(row.charAt(index + 1)))
        ).collect(Collectors.toList());
    }
}
