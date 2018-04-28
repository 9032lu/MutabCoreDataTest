//
//  Department+CoreDataProperties.h
//  MutabCoreDataTest
//
//  Created by ZhangTu on 2018/4/28.
//  Copyright © 2018年 Test. All rights reserved.
//
//

#import "Department+CoreDataClass.h"


NS_ASSUME_NONNULL_BEGIN

@interface Department (CoreDataProperties)

+ (NSFetchRequest<Department *> *)fetchRequest;

@property (nullable, nonatomic, copy) NSString *dp_deptname;
@property (nullable, nonatomic, retain) NSSet<Employee *> *employeeship;
@property (nullable, nonatomic, retain) NSSet<Post *> *postship;

@end

@interface Department (CoreDataGeneratedAccessors)

- (void)addEmployeeshipObject:(Employee *)value;
- (void)removeEmployeeshipObject:(Employee *)value;
- (void)addEmployeeship:(NSSet<Employee *> *)values;
- (void)removeEmployeeship:(NSSet<Employee *> *)values;

- (void)addPostshipObject:(Post *)value;
- (void)removePostshipObject:(Post *)value;
- (void)addPostship:(NSSet<Post *> *)values;
- (void)removePostship:(NSSet<Post *> *)values;

@end

NS_ASSUME_NONNULL_END
