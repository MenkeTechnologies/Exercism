<?php

class Robot
{
    public string $name = "";
    public static array $names = [];

    public function __construct()
    {
        $this->reset();
    }

    public function getName(): string
    {
        return $this->name;
    }

    public function reset(): void
    {
        $letters = [];
        for ($i=0; $i<5; $i++) {
            if ($i < 2)
                array_push($letters, chr(rand(65,90)));
            else
                array_push($letters, rand(0,9));
        }
        $cand = implode("", $letters);

        if (in_array($cand, self::$names)) {
            $this->reset();
        } else {
            array_push(self::$names, $cand);
            $this->name = $cand;
        }
    }
}

