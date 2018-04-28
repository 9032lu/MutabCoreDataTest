//
//  ViewController.m
//  MutabCoreDataTest
//
//  Created by ZhangTu on 2018/4/28.
//  Copyright © 2018年 Test. All rights reserved.
//

#import "ViewController.h"
#import <CoreData/CoreData.h>
#import "Department+CoreDataClass.h"
#import "Bank+CoreDataClass.h"
#import "Employee+CoreDataClass.h"
#import "Post+CoreDataClass.h"
#import "Salary+CoreDataClass.h"
@interface ViewController ()
@property (nonatomic,strong) NSManagedObjectContext *managedObjectContext;//**

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    //1穿件数据模型
    //获取模型路径
    NSURL  *model_Url = [[NSBundle mainBundle]URLForResource:@"Model" withExtension:@"momd"];
    //根据模型创建模型对象
    NSManagedObjectModel *objModel = [[NSManagedObjectModel alloc]initWithContentsOfURL:model_Url];
    
    //创建数据库助理对象
    NSPersistentStoreCoordinator *store = [[NSPersistentStoreCoordinator alloc]initWithManagedObjectModel:objModel];
    
    //获取数据库名称地址
    NSString *docStr = [NSSearchPathForDirectoriesInDomains(NSDocumentDirectory, NSUserDomainMask, YES) lastObject];
    
    NSString *sqlPath = [docStr stringByAppendingPathComponent:@"Data.sqlite"];
    
    NSLog(@"path ==%@",sqlPath);
    
    NSURL *sqlUrl  = [NSURL fileURLWithPath:sqlPath];
    
    NSError *error= nil;
    [store addPersistentStoreWithType:NSSQLiteStoreType configuration:nil URL:sqlUrl options:nil error:&error];
    
    if (error) {
        NSLog(@"添加数据库失败");
    }else{
        NSLog(@"添加数据库成功");
    }
    
    
    //创建上下文
    NSManagedObjectContext *context = [[NSManagedObjectContext alloc]initWithConcurrencyType:NSMainQueueConcurrencyType];
    
    //关联助理
    context.persistentStoreCoordinator = store;
    self.managedObjectContext = context;
}

- (IBAction)add:(id)sender {
    
    Department *dept = [NSEntityDescription insertNewObjectForEntityForName:@"Department" inManagedObjectContext:self.managedObjectContext];
    dept.dp_deptname = @"HR";
    
    Department *dept2 = [NSEntityDescription insertNewObjectForEntityForName:@"Department" inManagedObjectContext:self.managedObjectContext];
    
    dept2.dp_deptname = @"DEV";
    
    Department *dept3 = [NSEntityDescription insertNewObjectForEntityForName:@"Department" inManagedObjectContext:self.managedObjectContext];
    dept3.dp_deptname = @"POD";
    
    
    Salary *sy =[NSEntityDescription insertNewObjectForEntityForName:@"Salary" inManagedObjectContext:self.managedObjectContext];
    sy.sy_level = @"D";
    sy.sy_scale = 0.1;
    
    Salary *sy2 =[NSEntityDescription insertNewObjectForEntityForName:@"Salary" inManagedObjectContext:self.managedObjectContext];
    sy2.sy_level = @"C";
    sy2.sy_scale = 0.15;
    
    Salary *sy3 =[NSEntityDescription insertNewObjectForEntityForName:@"Salary" inManagedObjectContext:self.managedObjectContext];
    sy3.sy_level = @"B";
    sy3.sy_scale = 0.4;
    
    Salary *sy4 =[NSEntityDescription insertNewObjectForEntityForName:@"Salary" inManagedObjectContext:self.managedObjectContext];
    sy4.sy_level = @"A";
    sy4.sy_scale = 0.8;
    
    Post *pt= [NSEntityDescription insertNewObjectForEntityForName:@"Post" inManagedObjectContext:self.managedObjectContext];
    pt.pt_name = @"行政专员";
    pt.dept = dept;
    
    Post *pt2= [NSEntityDescription insertNewObjectForEntityForName:@"Post" inManagedObjectContext:self.managedObjectContext];
    pt2.salaryship = sy3;
    pt2.pt_name = @"人事经理";
    pt2.dept = dept;
    
    Post *pt3= [NSEntityDescription insertNewObjectForEntityForName:@"Post" inManagedObjectContext:self.managedObjectContext];
    pt3.pt_name = @"开发工程师";
    pt3.dept = dept2;
    pt3.salaryship = sy2;
    
    pt= [NSEntityDescription insertNewObjectForEntityForName:@"Post" inManagedObjectContext:self.managedObjectContext];
    pt.pt_name = @"架构师";
    pt.dept = dept2;
    
    pt= [NSEntityDescription insertNewObjectForEntityForName:@"Post" inManagedObjectContext:self.managedObjectContext];
    pt.pt_name = @"项目经理";
    pt.dept =dept2;
    
    Post *pt6= [NSEntityDescription insertNewObjectForEntityForName:@"Post" inManagedObjectContext:self.managedObjectContext];
    pt6.pt_name = @"测试工程师";
    pt6.dept = dept2;
    pt6.salaryship = sy;
    
    pt= [NSEntityDescription insertNewObjectForEntityForName:@"Post" inManagedObjectContext:self.managedObjectContext];
    pt.pt_name = @"销售代表";
    pt.dept = dept3;
    
    pt= [NSEntityDescription insertNewObjectForEntityForName:@"Post" inManagedObjectContext:self.managedObjectContext];
    pt.pt_name = @"销售经理";
    pt.dept = dept3;
    
    Post *pt9= [NSEntityDescription insertNewObjectForEntityForName:@"Post" inManagedObjectContext:self.managedObjectContext];
    pt9.pt_name = @"大客户经理";
    pt9.dept = dept3;
    pt9.salaryship = sy4;
    
    
    Bank *bk = [NSEntityDescription insertNewObjectForEntityForName:@"Bank" inManagedObjectContext:self.managedObjectContext];
    bk.bk_name = @"招行";
    bk.bk_address = @"广州";
    
    Bank *bk2 = [NSEntityDescription insertNewObjectForEntityForName:@"Bank" inManagedObjectContext:self.managedObjectContext];
    bk2.bk_name = @"浦发";
    bk2.bk_address = @"上海";
    
    Bank *bk3 = [NSEntityDescription insertNewObjectForEntityForName:@"Bank" inManagedObjectContext:self.managedObjectContext];
    bk3.bk_name = @"工行";
    bk3.bk_address = @"深圳";
    
    Employee *em = [NSEntityDescription insertNewObjectForEntityForName:@"Employee" inManagedObjectContext:self.managedObjectContext];
    em.em_age = 20;
    em.en_name = @"张三";
    em.em_sex = 1;
    em.em_bankcardid = @"46326587439043";
    em.dept = dept2;
    em.post = pt3;
    em.bank = bk2;
    
    em = [NSEntityDescription insertNewObjectForEntityForName:@"Employee" inManagedObjectContext:self.managedObjectContext];
    em.em_age = 18;
    em.en_name = @"李四";
    em.em_sex = 2;
    em.em_bankcardid = @"32565443246567";
    em.dept = dept;
    em.post = pt2;
    em.bank = bk3;
    
    em = [NSEntityDescription insertNewObjectForEntityForName:@"Employee" inManagedObjectContext:self.managedObjectContext];
    
    em.em_age = 26;
    em.en_name = @"欧阳";
    em.em_sex = 2;
    em.em_bankcardid = @"14354654656767";
    em.dept = dept3;
    em.post = pt9;
    em.bank = bk3;
    
    em = [NSEntityDescription insertNewObjectForEntityForName:@"Employee" inManagedObjectContext:self.managedObjectContext];
    em.em_age = 22;
    em.en_name = @"欧阳";
    em.em_sex = 2;
    em.em_bankcardid = @"9873429837433";
    em.dept = dept2;
    em.post = pt6;
    em.bank = bk3;
    
    [self.managedObjectContext save:nil];

    
    
}


- (IBAction)search1:(id)sender {
    
    NSEntityDescription * emEty = [NSEntityDescription entityForName:@"Employee" inManagedObjectContext:self.managedObjectContext];
    NSFetchRequest *frq = [[NSFetchRequest alloc]init];
    
    [frq setEntity:emEty];
    
    NSPredicate * cdt = [NSPredicate predicateWithFormat:@"en_name = %@",@"张三"];
    
    [frq setPredicate:cdt];
    
    NSArray *objs =[self.managedObjectContext executeFetchRequest:frq error:nil];
    
    //NSLog(@"%i",[objs count]);
    NSLog(@"%@",((Employee*)[objs objectAtIndex:0]).post.salaryship.sy_level);
    
    
    
}
- (IBAction)search2:(id)sender {
    
    
    NSEntityDescription * entity = [NSEntityDescription entityForName:@"Employee" inManagedObjectContext:self.managedObjectContext];
    NSFetchRequest *fetch = [[NSFetchRequest alloc]init];
    
    [fetch setEntity:entity];
    
    NSPredicate * qcmd = [NSPredicate predicateWithFormat:@"en_name = %@ ",@"欧阳"];
    
    [fetch setPredicate:qcmd];
    
    NSArray * obs = [self.managedObjectContext executeFetchRequest:fetch error:nil];
    
    NSPredicate * filter = [NSPredicate predicateWithFormat:@"dept.dp_deptname = %@",@"POD"];
    
    NSArray * ret = [obs filteredArrayUsingPredicate:filter];  //从数组中进行过滤。
    
    NSLog(@"%@",((Employee*)[ret objectAtIndex:0]).post.salaryship.sy_level);
    
    
    
    
    
}



@end
