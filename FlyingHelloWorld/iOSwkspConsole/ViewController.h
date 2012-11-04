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
	IBOutlet UISwitch *mySwitch;
	IBOutlet UIButton *myButton;
	int xpos;
	int ypos;
	bool buttonStatus;
}

-(IBAction)releasedButton;
-(void) onTimer;

@end
