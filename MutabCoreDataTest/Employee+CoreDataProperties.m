//
//  Employee+CoreDataProperties.m
//  MutabCoreDataTest
//
//  Created by ZhangTu on 2018/4/28.
//  Copyright © 2018年 Test. All rights reserved.
//
//

#import "Employee+CoreDataProperties.h"

@implementation Employee (CoreDataProperties)

+ (NSFetchRequest<Employee *> *)fetchRequest {
	return [NSFetchRequest fetchRequestWithEntityName:@"Employee"];
}

@dynamic em_age;
@dynamic em_bankcardid;
@dynamic en_name;
@dynamic em_sex;
@dynamic dept;
@dynamic post;
@dynamic bank;

@end
