#include "raindrops.h"
#include <stdio.h>
#include <string.h>

static const RainDrop dropMap[] = {
        {3, "Pling"},
        {5, "Plang"},
        {7, "Plong"}
};
const int DROP_COUNT = sizeof(dropMap) / sizeof(RainDrop);


char *convert(char result[], int drops) {

    for (int i = 0; i < DROP_COUNT; i++) {
        if (!(drops % dropMap[i].divisor))
            strncat(result, dropMap[i].dropName, 5);
    }
    if (!*result) sprintf(result, "%d", drops);
    return result;

}
