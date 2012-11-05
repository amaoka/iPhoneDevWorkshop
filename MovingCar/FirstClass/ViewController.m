//
//  ViewController.m
//  FirstClass
//
//  Created by Toshitaka Amaoka on 12/11/04.
//  Copyright (c) 2012年 Toshitaka Amaoka. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
	myCar = [[Car alloc] init];
	//[myCar display];
	myCar.xpos = 0;
	myCar.ypos = 400;
	myCar.xspeed = 5;
	[NSTimer scheduledTimerWithTimeInterval:1.0/30 target:self selector:@selector(onTimer) userInfo:nil repeats:YES];
}

-(void) onTimer{

	[myCar display];
	[myCar move];
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
