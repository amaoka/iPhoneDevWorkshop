//
//  ViewController.h
//  HelloWorld3
//
//  Created by Toshitaka Amaoka on 12/11/02.
//  Copyright (c) 2012年 Toshitaka Amaoka. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ViewController : UIViewController{

	IBOutlet UILabel *myText;
	IBOutlet UISwitch *sw;
	Boolean touchStatus;
}

-(IBAction)switchStatus:(id)sender;

@end
