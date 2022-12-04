#import "Anagram.h"

int char_compare(const char *a, const char *b) {
    if (*a < *b) {
        return -1;
    } else if (*a > *b) {
        return 1;
    }
    return 0;
}

NSString *sort_str(NSString *unsorted) {
    int len = (int) ([unsorted length] + 1);
    char *cstr = malloc(len);
    [unsorted getCString:cstr maxLength:len encoding:NSISOLatin1StringEncoding];
    qsort(cstr, (size_t) (len - 1), sizeof(char), char_compare);
    NSString *sorted = [NSString stringWithCString:cstr encoding:NSISOLatin1StringEncoding];
    free(cstr);
    return sorted;
}

@implementation Anagram
- (instancetype)initWithString:(NSString *)input {
    self = [super init];
    self.input = [input lowercaseString];
    return self;
}

- (NSArray<NSString *> *)match:(NSArray<NSString *> *)words {
    NSMutableArray *result = [NSMutableArray arrayWithCapacity:words.count];
    for (NSString *word in words) {
        if (sort_str([word lowercaseString]) == sort_str(self.input) && ![[word lowercaseString] isEqualToString:self.input]) {
            [result addObject:word];
        }
    }
    return result;
}

@end
