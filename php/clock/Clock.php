<?php

class Clock {
    private int $h;
    private int $m;

    function __construct(int $h, int $m = 0) {
        $this->h = $h % 24;
        $this->m = 0;
        $this->add($m);
    }

    public function add(int $minutes) {
        $this->h = ($this->h + intval(($this->m + $minutes) / 60)) % 24;
        $this->m = ($this->m + $minutes) % 60;
        if ($this->m < 0) {
            $this->h = ($this->h - 1) % 24;
            $this->m += 60;
        }
        if ($this->h < 0) $this->h += 24;
        return $this;
    }

    public function sub(int $minutes) {
        return $this->add(-$minutes);
    }

    public function __toString() {
        return sprintf("%02d:%02d", $this->h, $this->m);
    }
}

