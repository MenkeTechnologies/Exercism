<?php

function wordCount($s) {
    return array_count_values(
        preg_split('~\W+~u', mb_strtolower($s), -1, PREG_SPLIT_NO_EMPTY)
    );
}
