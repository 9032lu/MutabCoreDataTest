//
//  Bank+CoreDataProperties.m
//  MutabCoreDataTest
//
//  Created by ZhangTu on 2018/4/28.
//  Copyright © 2018年 Test. All rights reserved.
//
//

#import "Bank+CoreDataProperties.h"

@implementation Bank (CoreDataProperties)

+ (NSFetchRequest<Bank *> *)fetchRequest {
	return [NSFetchRequest fetchRequestWithEntityName:@"Bank"];
}

@dynamic bk_address;
@dynamic bk_name;
@dynamic employeeship;

@end
