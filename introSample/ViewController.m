//
//  ViewController.m
//  introSample
//
//  Created by 梶原大進 on 2015/09/12.
//  Copyright (c) 2015年 梶原大進. All rights reserved.
//

#import "ViewController.h"
#import "EAIntroView.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    
    // basic
    EAIntroPage *page1 = [EAIntroPage page];
    page1.bgImage = [UIImage imageNamed:@"apple.jpg"];
    page1.title = @"Hello world";
    page1.desc = @"test1";
    
    EAIntroPage *page2 = [EAIntroPage page];
    page2.bgImage = [UIImage imageNamed:@"apple.jpg"];
    page2.title = @"Hello world";
    page2.desc = @"test2";
    
    EAIntroPage *page3 = [EAIntroPage page];
    page3.bgImage = [UIImage imageNamed:@"apple.jpg"];
    page3.title = @"Hello world";
    page3.desc = @"test3";
    
    EAIntroView *intro = [[EAIntroView alloc] initWithFrame:self.view.bounds andPages:@[page1,page2,page3]];
    
    [intro setDelegate:self];
    
    [intro showInView:self.view animateDuration:0.0];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
