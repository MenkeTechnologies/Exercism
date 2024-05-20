<?php

final class Sublist
{
    public function compare(array $listOne, array $listTwo): string {
        $joined_list_1 = implode(',', $listOne) . ',';
        $joined_list_2 = implode(',', $listTwo) . ',';
        
        $oneInTwo = str_contains($joined_list_2, $joined_list_1);
        $twoInOne = str_contains($joined_list_1, $joined_list_2);
        
        return $oneInTwo && $twoInOne ? 'EQUAL' : ($oneInTwo ? 'SUBLIST' : ($twoInOne ? 'SUPERLIST' : 'UNEQUAL'));
    }
}
