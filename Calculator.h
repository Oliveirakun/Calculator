//
//  Calculator.h
//  Calc
//
//  Created by Alerta SMS on 7/18/11.
//  Copyright 2011 __MyCompanyName__. All rights reserved.
//

#import <Foundation/Foundation.h>


@interface Calculator : NSObject {
    
    double accumulator;
    
}

    
-(void)setAccumalator:(double)value;
-(void)clear;
-(double)getAccumulator;
-(void)add:(double)value;
-(void)subtract:(double)value;
-(void)multiply:(double)value;
-(void)divide:(double)value;



@end
