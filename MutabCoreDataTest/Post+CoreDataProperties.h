//
//  Post+CoreDataProperties.h
//  MutabCoreDataTest
//
//  Created by ZhangTu on 2018/4/28.
//  Copyright © 2018年 Test. All rights reserved.
//
//

#import "Post+CoreDataClass.h"


NS_ASSUME_NONNULL_BEGIN

@interface Post (CoreDataProperties)

+ (NSFetchRequest<Post *> *)fetchRequest;

@property (nullable, nonatomic, copy) NSString *pt_name;
@property (nullable, nonatomic, retain) Department *dept;
@property (nullable, nonatomic, retain) NSSet<Employee *> *employeeship;
@property (nullable, nonatomic, retain) Salary *salaryship;

@end

@interface Post (CoreDataGeneratedAccessors)

- (void)addEmployeeshipObject:(Employee *)value;
- (void)removeEmployeeshipObject:(Employee *)value;
- (void)addEmployeeship:(NSSet<Employee *> *)values;
- (void)removeEmployeeship:(NSSet<Employee *> *)values;

@end

NS_ASSUME_NONNULL_END
