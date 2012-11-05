//
//  Car.m
//  FirstClass
//
//  Created by Toshitaka Amaoka on 12/11/04.
//  Copyright (c) 2012年 Toshitaka Amaoka. All rights reserved.
//  This Car class is based on Daniel Shiffman'code.
//  http://www.learningprocessing.com/examples/chapter-8/example-8-1/


#import "Car.h"

@implementation Car

@synthesize xpos;
@synthesize ypos;
@synthesize xspeed;

-(id)init{
	
	//messaging to super class(NSObject)
	if(self == [super init]){
	
		xpos = 400;
		ypos = 300;
		xspeed = 1;
		
	}
	return self;  //return a object itself
}

-(void)display{
	
	//display in concole
	NSLog(@"The car is now x = %d : y = %d", xpos, ypos);
}
-(void)move{
	xpos = xpos + xspeed;
}

@end
