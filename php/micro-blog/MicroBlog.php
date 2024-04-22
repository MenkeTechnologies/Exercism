<?php

class MicroBlog {
    public function truncate($s) {
        return mb_substr($s, 0, 5);
    }
}
