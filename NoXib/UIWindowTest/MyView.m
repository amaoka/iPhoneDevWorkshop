//
//  MyView.m
//  UIWindowTest
//
//  Created by Toshitaka Amaoka on 12/11/07.
//  Copyright (c) 2012年 Toshitaka Amaoka. All rights reserved.
//

#import "MyView.h"

@implementation MyView

- (id)initWithFrame:(CGRect)frame
{
    self = [super initWithFrame:frame];
    if (self) {
		//make UITextField Object with size and position
        myField = [[UITextField alloc] initWithFrame:CGRectMake(50, 100, 200, 50)];
		myField.borderStyle = UITextBorderStyleRoundedRect;
		myField.textColor = [UIColor blueColor];
		myField.placeholder = @"enter some words...";
		//declare action made inside textfield received by this class
		myField.delegate = self;
		//add textfield object to MyView
		[self addSubview:myField];
		
		

    }
    return self;
}


- (void)drawRect:(CGRect)rect
{
	// Draw Red Rectangular
	//Get context  Context is a container for saving properties for graphics
    CGContextRef context = UIGraphicsGetCurrentContext();
	//set color property to context
	CGContextSetRGBFillColor(context, 1.0, 0.0, 0.0, 1.0);
	//set line width to context
	CGContextSetLineWidth(context, 10.0);
	//set rectangular property by CGRect
	//CGRectMake(x_posision, y_position, rect_width, rect_height);
	CGRect r1 = CGRectMake(100.0, 200.0, 100.0, 100.0);
	//set rectangular size and position to context
	CGContextAddRect(context, r1);
	//Draw
	CGContextFillPath(context);
}

//hide virtual keyboard when hit enter key.
- (BOOL)textFieldShouldReturn:(UITextField *)sender {
    NSLog(@"sender.text = %@" , sender.text );
    [sender resignFirstResponder];//キーボードを閉じる
    return YES;
}

@end
