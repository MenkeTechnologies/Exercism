<?php

class SecretHandshake {

    private const ACTIONS = [
        1 => 'wink',
        2 => 'double blink',
        4 => 'close your eyes',
        8 => 'jump',
    ];
    private const REVERSE = 16;

    public function commands(int $handshake): array {
        $actions = [];
        foreach (self::ACTIONS as $num => $action) {
            if ($num & $handshake) {
                $actions[] = $action;
            }
        }
        return $handshake & self::REVERSE ? array_reverse($actions) : $actions;
    }
}
