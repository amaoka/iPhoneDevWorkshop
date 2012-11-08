//
//  MyViewController.m
//  UIWindowTest
//
//  Created by Toshitaka Amaoka on 12/11/07.
//  Copyright (c) 2012年 Toshitaka Amaoka. All rights reserved.
//

#import "MyViewController.h"

@interface MyViewController ()

@end

@implementation MyViewController

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
	
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
		//get size of screen
		CGRect rect = [[UIScreen mainScreen] applicationFrame];
		//make object with rect size
		myView = [[MyView alloc] initWithFrame:rect];
		//set color of view color
		myView.backgroundColor = [UIColor blueColor];
		

		
    }
    return self;
}

- (void)viewDidLoad
{
    [super viewDidLoad];
		//set the veiw object of MyView class to the view which viewController holds.
		self.view = myView;

	NSLog(@"change view");
	
	
	// Do any additional setup after loading the view.
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}



@end
