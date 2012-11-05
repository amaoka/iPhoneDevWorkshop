//
//  ViewController.h
//  HelloWorld4
//
//  Created by Toshitaka Amaoka on 12/11/03.
//  Copyright (c) 2012年 Toshitaka Amaoka. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ViewController : UIViewController{

	IBOutlet UITextField *myField;
	IBOutlet UITextView *myView;

}

-(IBAction)display:(id)sender;

@end
