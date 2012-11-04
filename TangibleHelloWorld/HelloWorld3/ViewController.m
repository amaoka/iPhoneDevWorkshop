//
//  ViewController.m
//  HelloWorld3
//
//  Created by Toshitaka Amaoka on 12/11/02.
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
	touchStatus = FALSE;
	myText.tag = 100;
	self.view.backgroundColor = [UIColor colorWithPatternImage:
								 [UIImage imageNamed:@"paper.gif"]];
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

-(IBAction)switchStatus:(id)sender{

	if(sw.isOn){
		
		myText.hidden = NO;
		NSLog(@"on");
	
	}else{
		myText.hidden = YES;
		NSLog(@"off");
	}
	
}
//mousePressed in Processing
-(void)touchesBegan:(NSSet *)touches withEvent:(UIEvent *)event{
	UITouch *aTouch = [touches anyObject];
	if(aTouch.view.tag == myText.tag){
		NSLog(@"began");
		[myText setShadowColor:[UIColor whiteColor]];
		myText.center = CGPointMake(myText.center.x+2, myText.center.y+5);
		touchStatus=TRUE;
	}
}

//mouseReleased in Processing
-(void)touchesEnded:(NSSet *)touches withEvent:(UIEvent *)event{
	if(touchStatus){

		NSLog(@"ended");
		[myText setShadowColor:[UIColor grayColor]];
		myText.center = CGPointMake(myText.center.x-2, myText.center.y-5);
		touchStatus = FALSE;
	}
}
//mouseMoved in Processing
-(void)touchesMoved:(NSSet *)touches withEvent:(UIEvent *)event{
	
	UITouch *aTouch = [touches anyObject];
	//CGPoint is almost same as PVector
	CGPoint loc = [aTouch locationInView:self.view];
    //loc.x = mouseX,  loc.y = mouseY
	//check whether touch position is close to UILabel
	if(touchStatus){
		myText.center = loc;
	}
}

@end
