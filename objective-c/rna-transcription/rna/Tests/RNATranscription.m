#import "RNATranscription.h"

static NSDictionary *d;

@implementation RNATranscription
- (NSString *)rnaFromDNAStrand:(NSString *)strand {
    if (!d) {
        d = @{
                @"A": @"U",
                @"C": @"G",
                @"T": @"A",
                @"G": @"C"
        };
    }
    NSMutableString *rna = [NSMutableString string];
    for (NSUInteger i = 0; i < strand.length; ++i) {
        NSString *nucleotide = [NSString stringWithFormat:@"%c", [strand characterAtIndex:i]];
        NSString *complement = d[nucleotide];
        if (!complement) {return nil;}
        [rna appendString:complement];
    }
    return rna;
}

@end
