//
//  Car.h
//  FirstClass
//
//  Created by Toshitaka Amaoka on 12/11/04.
//  Copyright (c) 2012年 Toshitaka Amaoka. All rights reserved.
//  This Car class is based on Daniel Shiffman'code.
//  http://www.learningprocessing.com/examples/chapter-8/example-8-1/


#import <Foundation/Foundation.h>

@interface Car : NSObject{
	
	int xpos;
	int ypos;
	int xspeed;
}

@property(nonatomic) int xpos;
@property(nonatomic) int ypos;
@property(nonatomic) int xspeed;

-(id)init;
-(void) display;
-(void) move;

@end
