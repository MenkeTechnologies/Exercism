<?php

declare(strict_types=1);

class School
{
    private $students = [];
    public function add(string $name, int $grade): void
    {
        $this->students[$grade][] = $name;
    }
    public function grade($grade)
    {
        return $this->students[$grade] ?? [];
    }
    public function studentsByGradeAlphabetical(): array
    {
        ksort($this->students);
        foreach (array_keys($this->students) as $grade) {
            sort($this->students[$grade]);
        }
        return $this->students;
    }
}

