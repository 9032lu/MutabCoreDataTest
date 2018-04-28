//
//  Employee+CoreDataProperties.h
//  MutabCoreDataTest
//
//  Created by ZhangTu on 2018/4/28.
//  Copyright © 2018年 Test. All rights reserved.
//
//

#import "Employee+CoreDataClass.h"


NS_ASSUME_NONNULL_BEGIN

@interface Employee (CoreDataProperties)

+ (NSFetchRequest<Employee *> *)fetchRequest;

@property (nonatomic) int16_t em_age;
@property (nullable, nonatomic, copy) NSString *em_bankcardid;
@property (nullable, nonatomic, copy) NSString *en_name;
@property (nonatomic) int16_t em_sex;
@property (nullable, nonatomic, retain) Department *dept;
@property (nullable, nonatomic, retain) Post *post;
@property (nullable, nonatomic, retain) Bank *bank;

@end

NS_ASSUME_NONNULL_END
