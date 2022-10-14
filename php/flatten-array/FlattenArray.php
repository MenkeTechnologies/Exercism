<?php

function flatten(array $input) {
    $res = [];
    foreach ($input as $el) {
        if (is_array($el)) {
            $res = array_merge($res, flatten($el));
        } elseif ($el !== null) {
            $res[] = $el;
        }
    }
    return $res;
}
