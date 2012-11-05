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

	int num = [myField.text intValue];
	myView.text = @"";
	if(num<0){
		
		myView.text = @"Enter a integer number bigger than 0.";
		
	}else{
	
		for(int i = 0; i < num; i++){
		
			myView.text = [myView.text stringByAppendingString:@"Hello Wowld!\n"];
	
		}
	}
	[ self.view endEditing: YES ];
}


- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}
@end
