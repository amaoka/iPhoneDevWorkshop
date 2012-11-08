//
//  MyView.h
//  UIWindowTest
//
//  Created by Toshitaka Amaoka on 12/11/07.
//  Copyright (c) 2012年 Toshitaka Amaoka. All rights reserved.
//

#import <UIKit/UIKit.h>

//for receiving the input of UITextField inheritence interface<UITextFieldDelegate>

@interface MyView : UIView<UITextFieldDelegate>{
	UITextField *myField;
}
@end
