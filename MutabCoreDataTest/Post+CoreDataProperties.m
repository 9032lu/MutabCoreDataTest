//
//  Post+CoreDataProperties.m
//  MutabCoreDataTest
//
//  Created by ZhangTu on 2018/4/28.
//  Copyright © 2018年 Test. All rights reserved.
//
//

#import "Post+CoreDataProperties.h"

@implementation Post (CoreDataProperties)

+ (NSFetchRequest<Post *> *)fetchRequest {
	return [NSFetchRequest fetchRequestWithEntityName:@"Post"];
}

@dynamic pt_name;
@dynamic dept;
@dynamic employeeship;
@dynamic salaryship;

@end
