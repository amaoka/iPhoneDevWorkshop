//
//  ViewController.h
//  iOSwkspConsole
//
//  Created by Toshitaka Amaoka on 12/11/01.
//  Copyright (c) 2012年 Toshitaka Amaoka. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ViewController : UIViewController{
	
	IBOutlet UILabel *myText;
	IBOutlet UISlider *mySlider;
	IBOutlet UIButton *myButton;
	int xpos;
	int ypos;
	bool buttonStatus;
}

-(IBAction)releasedButton:(id)sender;
-(IBAction)slider:(id)sender;
-(void) onTimer;

@end
