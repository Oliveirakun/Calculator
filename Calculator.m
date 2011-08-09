//
//  Calculator.m
//  Calc
//
//  Created by Alerta SMS on 7/18/11.
//  Copyright 2011 __MyCompanyName__. All rights reserved.
//

#import "Calculator.h"


@implementation Calculator

-(void)setAccumalator:(double)value{
    accumulator = value;
}

-(void)clear{
    accumulator = 0;
}

-(double)getAccumulator{
    return accumulator;
}

-(void)add:(double)value{
    accumulator += value;
}

-(void)subtract:(double)value{
    accumulator -= value;
}

-(void)multiply:(double)value{
    accumulator *= value;
}

-(void)divide:(double)value{
    accumulator /= accumulator;
}
  

@end
