<?php

class KindergartenGarden
{
    private $rows;
    private $plants_codes = array("G" => "grass", "C" => "clover", "R" => "radishes", "V" => "violets");
    private $students = array("Alice", "Bob", "Charlie", "David", "Eve", "Fred", "Ginny", "Harriet", "Ileana", "Joseph", "Kincaid", "Larry");

    public function __construct(string $diagram) {
        $this->rows = explode("\n", $diagram);
    }

    public function plants(string $student): array {
        $student_index = array_search($student, $this->students);
        foreach ($this->rows as $row) {
            $plants[] = $this->plants_codes[$row[$student_index * 2]];
            $plants[] = $this->plants_codes[$row[$student_index * 2 + 1]];
        }
        return $plants;
    }
}
