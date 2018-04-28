//
//  Salary+CoreDataProperties.m
//  MutabCoreDataTest
//
//  Created by ZhangTu on 2018/4/28.
//  Copyright © 2018年 Test. All rights reserved.
//
//

#import "Salary+CoreDataProperties.h"

@implementation Salary (CoreDataProperties)

+ (NSFetchRequest<Salary *> *)fetchRequest {
	return [NSFetchRequest fetchRequestWithEntityName:@"Salary"];
}

@dynamic sy_level;
@dynamic sy_scale;
@dynamic post;

@end
