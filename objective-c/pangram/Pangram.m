@implementation Pangram
+ (BOOL)isPangram:(NSString *)string {
    block NSString *lowercaseString = [string lowercaseString];
    NSString *alpha = @"abcdefghijklmnopqrstuvwxyz";
    [str enumerateSubstringsInRange:NSMakeRange(0, alpha.length) options:NSStringEnumerationByComposedCharacterSequences usingBlock:^(NSString * _Nullable substring, NSRange substringRange, NSRange enclosingRange, BOOL * _Nonnull stop) {
        if (![lowercaseString containsString:substring]) {
            return false;
        }
    }];
    return true;
}
@end
