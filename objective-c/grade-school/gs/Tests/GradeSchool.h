#import <Foundation/Foundation.h>

@interface GradeSchool : NSObject
@property(strong, nonatomic) NSMutableDictionary *db;
- (NSDictionary<NSNumber *, NSArray<NSString *> *> *)sort;
- (void)addStudentWithName:(NSString *)name andGrade:(NSNumber *)grade;
- (NSArray<NSString *> *)studentsInGrade:(NSNumber *)grade;
@end
