#ifndef RAINDROPS_H
#define RAINDROPS_H

typedef struct RainDrop{
    int divisor;
    char dropName[5];
} RainDrop;

char *convert(char result[], int drops);

#endif
