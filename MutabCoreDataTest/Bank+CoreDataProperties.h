//
//  Bank+CoreDataProperties.h
//  MutabCoreDataTest
//
//  Created by ZhangTu on 2018/4/28.
//  Copyright © 2018年 Test. All rights reserved.
//
//

#import "Bank+CoreDataClass.h"


NS_ASSUME_NONNULL_BEGIN

@interface Bank (CoreDataProperties)

+ (NSFetchRequest<Bank *> *)fetchRequest;

@property (nullable, nonatomic, copy) NSString *bk_address;
@property (nullable, nonatomic, copy) NSString *bk_name;
@property (nullable, nonatomic, retain) NSSet<Employee *> *employeeship;

@end

@interface Bank (CoreDataGeneratedAccessors)

- (void)addEmployeeshipObject:(Employee *)value;
- (void)removeEmployeeshipObject:(Employee *)value;
- (void)addEmployeeship:(NSSet<Employee *> *)values;
- (void)removeEmployeeship:(NSSet<Employee *> *)values;

@end

NS_ASSUME_NONNULL_END
