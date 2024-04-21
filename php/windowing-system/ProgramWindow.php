<?php

class ProgramWindow
{
    public function __construct(public $x = 0, public $y = 0,
                                public $width = 800, public $height = 600)
    {
    }

    public function resize(Size $size): void
    {
        $this->width = $size->width;
        $this->height = $size->height;
    }

    public function move(Position $position): void
    {
        $this->x = $position->x;
        $this->y = $position->y;
    }
}
