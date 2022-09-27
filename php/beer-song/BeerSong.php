<?php

class BeerSong
{
    public function lyrics(): string
    {
        return $this->verses(99, 0);
    }
    public function verse($verse){
        $minus1 = $verse - 1;
        switch ($verse){
            case 2:
                return "2 bottles of beer on the wall, 2 bottles of beer.\n"
                                 ."Take one down and pass it around, 1 bottle of beer on the wall.\n";
            case 1:
                return  "1 bottle of beer on the wall, 1 bottle of beer.\n"
                                 ."Take it down and pass it around, no more bottles of beer on the wall.\n";
            case 0:
                return "No more bottles of beer on the wall, no more bottles of beer.\n"
                                 ."Go to the store and buy some more, 99 bottles of beer on the wall.";
            default:
                return "$verse bottles of beer on the wall, $verse bottles of beer.\n"
                                 ."Take one down and pass it around, $minus1 bottles of beer on the wall.\n";
        }
    }

    public function verses(int $from, int $to): string
    {
        return implode("\n", array_map(
            fn($number) => $this->verse($number),
            range($from, $to)
        ));
    }
}
