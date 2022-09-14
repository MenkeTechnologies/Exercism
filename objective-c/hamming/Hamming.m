@implementation Hamming

+(NSUInteger)compute:(NSString *)dna1 against:(NSString *)dna2
{
    NSUInteger dist = 0;
    for (NSUInteger i = 0; i < dna1.length; ++i) {
        if ([dna1 characterAtIndex:i] != [dna2 characterAtIndex:i]) {
            ++dist;
        }
    }
    return dist;
}
@end
