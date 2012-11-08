//
//  AppDelegate.h
//  UIWindowTest
//
//  Created by Toshitaka Amaoka on 12/11/07.
//  Copyright (c) 2012年 Toshitaka Amaoka. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "MyViewController.h"

@interface AppDelegate : UIResponder <UIApplicationDelegate>{

	MyViewController *myViewCtrl;
}

@property (strong, nonatomic) UIWindow *window;

@end
