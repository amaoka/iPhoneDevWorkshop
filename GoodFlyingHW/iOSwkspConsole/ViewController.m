//
//  ViewController.m
//  iOSwkspConsole
//
//  Created by Toshitaka Amaoka on 12/11/01.
//  Copyright (c) 2012年 Toshitaka Amaoka. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad
{
	
    [super viewDidLoad];
	ypos = 150;
	xpos = -50;

	buttonStatus = TRUE;
	myText.textColor = [UIColor whiteColor];
	myText.font = [UIFont systemFontOfSize:32];
	myText.text = @"Hello World!";
	
	
	//set the range of number for slider
	[mySlider setMinimumValue:0.0];
	[mySlider setMaximumValue:self.view.frame.size.height];
	
	//set background picture
	self.view.backgroundColor = [UIColor colorWithPatternImage:[UIImage imageNamed:@"sky.png"]];
	[NSTimer scheduledTimerWithTimeInterval:1.0 / 30.0
									 target:self selector:@selector(onTimer) userInfo:nil repeats:YES];
}

-(void) onTimer{
	int width = self.view.frame.size.width +50;
    if (xpos > width) {
		xpos = -50;
	}
	if(buttonStatus){
		xpos+=1;
	}
	//[myText setCenter:CGPointMake(xpos, ypos)];
	myText.center = CGPointMake(xpos, ypos);
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

-(IBAction)releasedButton:(id)sender{
	
	//buttonStatus generally calls Flag

	if (buttonStatus) {
		buttonStatus = FALSE;
		[myButton setTitle:@"FLY" forState:UIControlStateNormal];
	}else{
		buttonStatus = TRUE;
		[myButton setTitle:@"STAY" forState:UIControlStateNormal];

	}
}

-(IBAction)slider:(id)sender{
	
	ypos = mySlider.value;

}



@end
