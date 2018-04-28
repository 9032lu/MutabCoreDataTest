//
//  Salary+CoreDataProperties.h
//  MutabCoreDataTest
//
//  Created by ZhangTu on 2018/4/28.
//  Copyright © 2018年 Test. All rights reserved.
//
//

#import "Salary+CoreDataClass.h"


NS_ASSUME_NONNULL_BEGIN

@interface Salary (CoreDataProperties)

+ (NSFetchRequest<Salary *> *)fetchRequest;

@property (nullable, nonatomic, copy) NSString *sy_level;
@property (nonatomic) double sy_scale;
@property (nullable, nonatomic, retain) Post *post;

@end

NS_ASSUME_NONNULL_END
