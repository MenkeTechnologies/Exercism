<?php
function language_list(string ...$lst) {
    return $lst;
}
function add_to_language_list($a, $lst) {
    return array_merge($a, [$lst]);
}
function prune_language_list($lst){
    return array_slice($lst, 1);
}

function current_language($lst){
    return $lst[0];
}

function language_list_length($lst){
    return count($lst);
}
