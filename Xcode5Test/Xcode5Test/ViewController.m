//
//  ViewController.m
//  Xcode5Test
//
//  Created by Dev on 10/25/13.
//  Copyright (c) 2013 lc. All rights reserved.
//

#import "ViewController.h"
#import "FirstViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
    [self.view setBackgroundColor:[UIColor greenColor]];
    
    UIButton *btn = [UIButton buttonWithType:UIButtonTypeCustom];
    [btn setFrame:CGRectMake(0, 0, 100, 100)];
    [btn setCenter:self.view.center];
    [btn setTitle:@"Next" forState:UIControlStateNormal];
    [btn addTarget:self action:@selector(actionClickButton) forControlEvents:UIControlEventTouchUpInside];
    [self.view addSubview:btn];
	// Do any additional setup after loading the view, typically from a nib.
}

- (void)actionClickButton
{
    FirstViewController *controller = [[FirstViewController alloc] init];
    [self presentViewController:controller animated:YES completion:^{
        
    }];
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
