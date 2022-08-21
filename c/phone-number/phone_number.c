#include "phone_number.h"

char *phone_number_clean(const char *s) {
    char *result = calloc(PHONE_NUMBER_LEN + 1, sizeof(char));
    memset(result, '0', PHONE_NUMBER_LEN);
    size_t len = strlen(s);
    size_t rp = 0;
    for (size_t i = 0; i < len; ++i) {
        char c = s[i];
        if (!isdigit(c) || c <= '1' && (rp == 0 || rp == 3))
            continue;
        if (rp == PHONE_NUMBER_LEN) {
            memset(result, '0', PHONE_NUMBER_LEN);
            return result;
        }
        result[rp++] = c;
    }
    if (rp < PHONE_NUMBER_LEN)
        memset(result, '0', PHONE_NUMBER_LEN);
    return result;
}
