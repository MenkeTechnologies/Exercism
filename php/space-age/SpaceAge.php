<?php

const ORBITALPERIODS = [
    "Mercury" => 0.2408467,
    "Venus" => 0.61519726,
    "Mars" => 1.8808158,
    "Jupiter" => 11.862615,
    "Saturn" => 29.447498,
    "Uranus" => 84.016846,
    "Neptune" => 164.79132
    ];

const SPY = 31557600;

class SpaceAge {
    public $seconds;
    public $secondsOnEarth;
    public function __construct($seconds) {
        $this->seconds = $seconds;
        $this->secondsOnEarth = $seconds / SPY;
    }

    public function pretty($arg) { return round($arg, 2); }
    public function seconds() { return $this->seconds; }
    public function earth() { return $this->pretty($this->secondsOnEarth); }
    public function mercury() { return $this->pretty($this->secondsOnEarth / ORBITALPERIODS["Mercury"]); }
    public function venus() { return $this->pretty($this->secondsOnEarth / ORBITALPERIODS["Venus"]); }
    public function mars() { return $this->pretty($this->secondsOnEarth / ORBITALPERIODS["Mars"]); }
    public function jupiter() { return $this->pretty($this->secondsOnEarth / ORBITALPERIODS["Jupiter"]); }
    public function saturn() { return $this->pretty($this->secondsOnEarth / ORBITALPERIODS["Saturn"]); }
    public function uranus() { return $this->pretty($this->secondsOnEarth / ORBITALPERIODS["Uranus"]); }
    public function neptune() { return $this->pretty($this->secondsOnEarth / ORBITALPERIODS["Neptune"]); }
}
