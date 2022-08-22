#include <stdlib.h>
#include "secret_handshake.h"

const char **commands(size_t number) {
    const char **commands = calloc(4, sizeof(const char *));
    size_t len = 0;
    if (number & 1) commands[len++] = "wink";
    if (number & 2) commands[len++] = "double blink";
    if (number & 4) commands[len++] = "close your eyes";
    if (number & 8) commands[len++] = "jump";

    if (number & 16) {
        for (size_t i = 0; i < len / 2; ++i) {
            const char *tmp = commands[i];
            commands[i] = commands[len - i - 1];
            commands[len - i - 1] = tmp;
        }
    }
    return commands;
}
