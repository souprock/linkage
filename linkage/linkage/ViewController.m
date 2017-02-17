//
//  ViewController.m
//  linkage
//
//  Created by ty on 17/2/17.
//  Copyright © 2017年 ty. All rights reserved.
//

#import "ViewController.h"
#import "SunDataPicker.h"
#define Width [UIScreen mainScreen].bounds.size.width
#define Height [UIScreen mainScreen].bounds.size.height

@interface ViewController ()
@property (strong, nonatomic) SunDataPicker *sunDataPicker;

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    self.sunDataPicker =[[SunDataPicker alloc]initWithFrame:CGRectMake(0, 100,Width-20 , (Width-20)*2/3)];
    self.sunDataPicker.title.text=@"请选择";
}

- (IBAction)UpButton:(id)sender {
    NSLog(@"%@",@"aaa");
    
   // NSDictionary *dic = [[NSDictionary alloc] initWithObjectsAndKeys:@"one",@"1",@"two",@"2",@"three",@"3", nil];
    
    NSDictionary *dic = @{@"1":@{@"1":@[@"1",@"2",@"3"],@"2":@[@"1",@"2",@"3"],@"3":@[@"1",@"2",@"3"]},@"2":@{@"1":@[@"1",@"2",@"3"],@"2":@[@"1",@"2",@"3"],@"3":@[@"1",@"2",@"3"]},@"3":@{@"1":@[@"1",@"2",@"3"],@"2":@[@"1",@"2",@"3"],@"3":@[@"1",@"2",@"3"]}};

    [self.sunDataPicker setNumberOfComponents:3 SET:dic addTarget:self.view  Complete:^(NSString *one, NSString *two, NSString *three) {
        NSLog(@"%@-%@-%@",one,two,three);
    }];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
