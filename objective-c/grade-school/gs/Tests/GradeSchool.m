#import "GradeSchool.h"

@implementation GradeSchool
- (instancetype)init {
    _db = [NSMutableDictionary dictionary];
    return self;
}

- (NSDictionary<NSNumber *, NSArray<NSString *> *> *)sort {
    NSMutableDictionary *res = [NSMutableDictionary dictionary];
    [_db.allKeys enumerateObjectsUsingBlock:^(id k, NSUInteger _i, BOOL *_stop) {
        res[k] = [_db[k] sortedArrayUsingSelector:@selector(compare:)];
    }];
    return res;
}

- (void)addStudentWithName:(NSString *)name andGrade:(NSNumber *)grade {
    NSArray *names = _db[grade];
    _db[grade] = names ? [names arrayByAddingObject:name] : @[name];
}

- (NSArray<NSString *> *)studentsInGrade:(NSNumber *)grade {
    return _db[grade] ?: @[];
}

@end
