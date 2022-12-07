#import "BinarySearch.h"
@implementation BinarySearch
- (instancetype)initWithArray:(NSArray *)lst {
    for (int i = 1; i < lst.count; ++i) {
        if ([lst[i] integerValue] < [lst[i - 1] integerValue]) { return nil; }
    }
    _list = lst;
    return self;
}
- (NSInteger)searchFor:(NSInteger)search {
    for (NSInteger lo = 0, hi = _list.count; lo < hi; ) {
        NSInteger mid = (lo + hi) / 2;
        NSInteger val = [_list[mid] integerValue];
        if (val == search) {
            return mid;
        } else if (val < search) {
            lo = mid + 1;
        } else {
            hi = mid;
        }
    }
    return NSNotFound;
}
- (NSInteger)middle {
    return _list.count / 2;
}
@end
