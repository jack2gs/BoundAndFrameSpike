//
//  ViewController.m
//  BoundAndFrameSpike
//
//  Created by Gao Song on 8/6/16.
//  Copyright © 2016 Gao Song. All rights reserved.
//

#import "ViewController.h"
#import "GSCoordinateView.h"

@interface ViewController ()

@property (strong, nonatomic)  GSCoordinateView *parentView;
@property (strong, nonatomic)  GSCoordinateView *childView;

@end

@implementation ViewController



- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    [self setup];
}

-(void)setup
{
    // setup view
    self.view.backgroundColor=[UIColor whiteColor];
    // set up parent view
    self.parentView=[[GSCoordinateView alloc] initWithFrame:CGRectMake(50, 50, 200, 200)];
    self.parentView.contentMode=UIViewContentModeRedraw;
    self.parentView.backgroundColor=[UIColor cyanColor];
    [self.view addSubview:self.parentView];
    // set up child view
    self.childView=[[GSCoordinateView alloc] initWithFrame:CGRectMake(50, 50, 50, 50)];
    self.childView.contentMode=UIViewContentModeRedraw;
    self.childView.backgroundColor=[UIColor purpleColor];
    [self.parentView addSubview:self.childView];
    // set up restore button
    UIButton *restoreButton=[UIButton buttonWithType:UIButtonTypeRoundedRect];
    [restoreButton setTitle:@"Restore" forState:UIControlStateNormal];
    restoreButton.frame=CGRectMake(8, 300, 100, 30);
    [restoreButton addTarget:self action:@selector(restore) forControlEvents:UIControlEventTouchUpInside];
    [self.view addSubview:restoreButton];
    // set up change bound button
    UIButton *changeBoundButton=[UIButton buttonWithType:UIButtonTypeRoundedRect];
    [changeBoundButton setTitle:@"Change Bound" forState:UIControlStateNormal];
    changeBoundButton.frame=CGRectMake(76, 300, 150, 30);
    [changeBoundButton addTarget:self action:@selector(changeBound) forControlEvents:UIControlEventTouchUpInside];
    [self.view addSubview:changeBoundButton];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (void)restore {
    self.parentView.bounds=CGRectMake(0, 0, 200, 200);
}

- (void)changeBound {
    self.parentView.bounds=CGRectMake(-30, -30, 200, 200);
}


@end
