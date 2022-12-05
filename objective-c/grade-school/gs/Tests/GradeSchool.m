#import "GradeSchool.h"

@implementation GradeSchool
- (instancetype)init {
    self.db = [NSMutableDictionary dictionary];
    return self;
}

- (NSDictionary<NSNumber *, NSArray<NSString *> *> *)sort {
    NSMutableDictionary *res = [NSMutableDictionary dictionary];
    [self.db.allKeys enumerateObjectsUsingBlock:^(id k, NSUInteger _i, BOOL *_stop) {
        res[k] = [self.db[k] sortedArrayUsingSelector:@selector(compare:)];
    }];
    return res;
}

- (void)addStudentWithName:(NSString *)name andGrade:(NSNumber *)grade {
    NSArray *names = self.db[grade];
    self.db[grade] = names ? [names arrayByAddingObject:name] : @[name];
}

- (NSArray<NSString *> *)studentsInGrade:(NSNumber *)grade {
    return self.db[grade] ?: @[];
}

@end
