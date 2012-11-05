//
//  ViewController.m
//  HelloWorld4
//
//  Created by Toshitaka Amaoka on 12/11/03.
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
}

-(IBAction)display:(id)sender{

	NSString *txt = [myField.text stringByAppendingString:@"\n"];
	for(int i = 0; i < 100; i++){
		
	 myView.text = [myView.text stringByAppendingString:txt];
	
	}

}


-(void)findAndResignFirstResponder{
	for (UIView *aView in [self.view subviews]){
		if ([aView isFirstResponder] ) {
			[aView resignFirstResponder];
		}
	}
}
-(void)touchesBegan:(NSSet *)touches withEvent:(UIEvent *)event{
	for (UITouch *touch in touches){
		if (touch.view == self.view){
			[self findAndResignFirstResponder];
		}
	}
}


- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}
@end
