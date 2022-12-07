#import "NucleotideCount.h"

@interface NucleotideCount()
@property (strong, nonatomic, readwrite) NSString *strand;
@end
@implementation NucleotideCount
static NSString *adenine = @"A";
static NSString *cytosine = @"C";
static NSString *guanine = @"G";
static NSString *thymine = @"T";

-(instancetype)initWithStrand:(NSString *)strand {
    if (self = [super init]) {
        NSPredicate *predicate = [NSPredicate predicateWithFormat:@"SELF MATCHES %@", @"[CTAG]*"];
        NSAssert([predicate evaluateWithObject:strand], @"Invalid DNA Strand");
        _strand = strand;
    }
    return self;
}
-(NSInteger)count:(NSString *)nucleotide {
    return _strand.length - [[_strand copy] stringByReplacingOccurrencesOfString:nucleotide withString:@""].length;
}
-(NSDictionary<NSString *,NSNumber *> *)nucleotideCounts {
    return @{ adenine: [NSNumber numberWithInteger:[self count:adenine]],
              cytosine : [NSNumber numberWithInteger:[self count:cytosine]],
              guanine : [NSNumber numberWithInteger:[self count:guanine]],
              thymine : [NSNumber numberWithInteger:[self count:thymine]] };
}
@end
