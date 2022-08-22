#include "word_count.h"

int count_words(const char *sentence, word_count_word_t *words) {
    int counter = 0;
    char buffer[MAX_WORD_LENGTH + 1];
    size_t length = 0;
    for (; *sentence != '\0'; ++sentence) {
        if (isalnum(*sentence) || (*sentence == '\'' && length && isalnum(*(sentence + 1)))) {
            if (length == MAX_WORD_LENGTH) return EXCESSIVE_LENGTH_WORD;
            buffer[length++] = tolower(*sentence);
        } else if (length) {
            buffer[length] = '\0';
            bool hasWord = false;
            for (int i = 0; i < counter; ++i) {
                if (strcmp(words[i].text, buffer) == 0) {
                    ++words[i].count;
                    hasWord = true;
                    break;
                }
            }
            if (!hasWord) {
                if (counter == MAX_WORDS) return EXCESSIVE_NUMBER_OF_WORDS;
                strcpy(words[counter].text, buffer);
                ++words[counter++].count;
            }
            length = 0;
        }
    }
    if (length) {
        buffer[length] = '\0';
        bool hasWord = false;
        for (int i = 0; i < counter; ++i) {
            if (strcmp(words[i].text, buffer) == 0) {
                ++words[i].count;
                hasWord = true;
                break;
            }
        }
        if (!hasWord) {
            if (counter == MAX_WORDS)
                return EXCESSIVE_NUMBER_OF_WORDS;
            strcpy(words[counter].text, buffer);
            ++words[counter++].count;
        }
    }
    return counter;
}
