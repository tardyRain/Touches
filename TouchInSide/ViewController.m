//
//  ViewController.m
//  TouchInSide
//
//  Created by xinyu.wu on 16/9/1.
//  Copyright © 2016年 desire.wu. All rights reserved.
//

#import "ViewController.h"
#import "BaseView.h"
#import "testBtn.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    
    
    BaseView *baseView = [[BaseView alloc] initWithFrame:CGRectMake(0, 100, CGRectGetWidth(self.view.frame), 400)];
    baseView.backgroundColor = [UIColor yellowColor];//470
    [self.view addSubview:baseView];
    
    
    BaseView1 *baseView1 = [[BaseView1 alloc] initWithFrame:CGRectMake(0, 100, CGRectGetWidth(self.view.frame), 200)];
    baseView1.backgroundColor = [UIColor cyanColor];//c00
    [baseView addSubview:baseView1];
    
    testBtn *btn2 = [testBtn buttonWithType:UIButtonTypeCustom];
    btn2.backgroundColor = [UIColor cyanColor];
    btn2.frame = CGRectMake(100, 300, 100, 50);
    [baseView addSubview:btn2];
    
    UIButton *btn1 = [UIButton buttonWithType:UIButtonTypeCustom];
    btn1.backgroundColor = [UIColor redColor];
    btn1.frame = CGRectMake(100, 50, 100, 50);
    [self.view addSubview:btn1];
    
    btn1.exclusiveTouch = YES;
    
    [btn1 addTarget:self action:@selector(btn1Click:) forControlEvents:UIControlEventTouchUpInside];
    [btn2 addTarget:self action:@selector(btn2Click:) forControlEvents:UIControlEventTouchUpInside];
}

-(void)btn1Click:(UIButton *)btn
{
    NSLog(@"%s",__FUNCTION__);
}

-(void)btn2Click:(UIButton *)btn
{
    NSLog(@"%s",__FUNCTION__);
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
