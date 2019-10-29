//
//  ViewController.m
//  testDemo
//
//  Created by hxshop on 2019/10/29.
//  Copyright © 2019 hxshop. All rights reserved.
//

#import "ViewController.h"
#import "FBtestRootType.h"
#import "FBtestCar.h"
@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    FBtestRootType *root = [[FBtestRootType alloc]init];
    
    FBtestPerson *person1 = [[FBtestPerson alloc]init];
    person1.name = @"张三";
    person1.isVip = YES;
    FBtestCar *car = [[FBtestCar alloc]init];
    car.number = 123;
    car.describle = @"这是张三的第一辆车";
    [person1.carList addObject:car];
    [root.items addObject:person1];
    
    FBtestPerson *person2 = [[FBtestPerson alloc]init];
    person2.name = @"李四";
    person2.isVip = YES;
    FBtestCar *car2 = [[FBtestCar alloc]init];
    car2.number = 123;
    car2.describle = @"这是张三的第一辆车";
    [person2.carList addObject:car2];
    FBtestCar *car3 = [[FBtestCar alloc]init];
    car3.number = 123;
    car3.describle = @"这是张三的第二辆车";
    [person2.carList addObject:car3];
    [root.items addObject:person2];
    
    // 编码：对象->data
    NSData * data = [root getData];
    NSLog(@"data == %@", data);
    // 解码：
    FBtestRootType *root1 = (FBtestRootType *)[FBtestRootType getRootAs:data];
    NSLog(@"items == %@ person == %@", root1.items, root1.items[0]);
}


@end
