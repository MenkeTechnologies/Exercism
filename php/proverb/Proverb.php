<?php

class Proverb {
    public function recite($pieces) {
        $res = [];
        for ($i = 1; $i < count($pieces); ++$i)
            $res[]= sprintf("For want of a %s the %s was lost.", $pieces[$i - 1], $pieces[$i]);

        if ($pieces)
            $res[]= sprintf("And all for the want of a %s.", $pieces[0]);

        return $res;
    }
}
